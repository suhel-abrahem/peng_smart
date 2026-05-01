const prisma = require("../lib/prisma");
function addMinutes(time, minutes) {
  const [h, m] = time.split(":").map(Number);

  const date = new Date();
  date.setHours(h);
  date.setMinutes(m + minutes);

  return `${String(date.getHours()).padStart(2, "0")}:${String(date.getMinutes()).padStart(2, "0")}`;
}
async function registerDevice(req, res) {
  try {
    const userId = req.user.userId;
    const { name, type, macAddress, homeId, roomId, components } = req.body;

    if (!name || !type || !macAddress || !homeId) {
      return res.status(400).json({
        message: "name, type, macAddress and homeId are required",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this home",
      });
    }

    if (roomId) {
      const room = await prisma.room.findFirst({
        where: {
          id: roomId,
          homeId,
        },
      });

      if (!room) {
        return res.status(400).json({
          message: "Room does not belong to this home",
        });
      }
    }

    const existingDevice = await prisma.device.findUnique({
      where: {
        macAddress,
      },
    });

    if (existingDevice) {
      if (existingDevice.homeId !== homeId) {
        return res.status(400).json({
          message: "This device is already registered in another home",
        });
      }

      const updatedExistingDevice = await prisma.device.update({
        where: {
          macAddress,
        },
        data: {
          name,
          type,
          roomId: roomId || null,
          componentsJson: components || null,
        },
      });

      return res.status(200).json({
        message: "Device already registered, updated successfully",
        data: updatedExistingDevice,
      });
    }

    const device = await prisma.device.create({
      data: {
        name,
        type,
        macAddress,
        homeId,
        roomId: roomId || null,
        status: "offline",
        componentsJson: components || null,
      },
    });

    return res.status(201).json({
      message: "Device registered successfully",
      data: device,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function getHomeDevices(req, res) {
  try {
    const userId = req.user.userId;
    const { homeId } = req.params;

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this home",
      });
    }

    const devices = await prisma.device.findMany({
      where: {
        homeId,
      },
      include: {
        room: true,
      },
      orderBy: {
        createdAt: "desc",
      },
    });

    return res.status(200).json({
      message: "Devices fetched successfully",
      data: devices,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function getDeviceById(req, res) {
  try {
    const userId = req.user.userId;
    const { deviceId } = req.params;

    const device = await prisma.device.findUnique({
      where: {
        id: deviceId,
      },
      include: {
        room: true,
      },
    });

    if (!device) {
      return res.status(404).json({
        message: "Device not found",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: device.homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this device",
      });
    }

    return res.status(200).json({
      message: "Device fetched successfully",
      data: device,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function getDevicesByRoomId(req, res) {
  try {
    const userId = req.user.userId;
    const { roomId } = req.params;

    const room = await prisma.room.findUnique({
      where: {
        id: roomId,
      },
      include: {
        home: true,
      },
    });

    if (!room) {
      return res.status(404).json({
        message: "Room not found",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: room.homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this room",
      });
    }

    const devices = await prisma.device.findMany({
      where: {
        roomId,
      },
      orderBy: {
        createdAt: "desc",
      },
    });

    return res.status(200).json({
      message: "Devices fetched successfully",
      data: devices,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function updateDeviceRules(req, res) {
  try {
    const userId = req.user.userId;
    const { deviceId } = req.params;
    const { sessions } = req.body;

    if (!sessions || !Array.isArray(sessions)) {
      return res.status(400).json({
        message: "sessions array is required",
      });
    }

    const device = await prisma.device.findUnique({
      where: { id: deviceId },
    });

    if (!device) {
      return res.status(404).json({
        message: "Device not found",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: device.homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this device",
      });
    }

    const groups = [];

    sessions.forEach((s, index) => {
      const r1End = addMinutes(s.start, s.r1);
      const r2Start = r1End;

      // 🔴 Relay 1
      groups.push({
        name: `R1-${index}`,
        rules: [
          {
            activeFrom: s.start,
            activeTo: r1End,
            days: s.days ?? [],
            source: "tempSensor",
            operator: s.operator || "lessThan",
            value: String(s.temp ?? 60),
          },
        ],
        actions: [
          { targetComponentId: "relay1", action: "turnOn" },
          { targetComponentId: "relay2", action: "turnOff" },
        ],
      });

      // 🔵 Relay 2
      groups.push({
        name: `R2-${index}`,
        rules: [
          {
            activeFrom: r2Start,
            activeTo: s.end,
            days: s.days ?? [],
            source: "tempSensor",
            operator: s.operator || "lessThan",
            value: String(s.temp ?? 60),
          },
        ],
        actions: [
          { targetComponentId: "relay1", action: "turnOff" },
          { targetComponentId: "relay2", action: "turnOn" },
        ],
      });
    });

    const updatedDevice = await prisma.device.update({
      where: { id: deviceId },
      data: {
        rulesJson: groups,
      },
    });

    return res.status(200).json({
      message: "Device rules updated successfully",
      data: updatedDevice,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function getDeviceTelemetry(req, res) {
  try {
    const userId = req.user.userId;
    const { deviceId } = req.params;
    const limit = Number(req.query.limit || 50);

    const device = await prisma.device.findUnique({
      where: {
        id: deviceId,
      },
    });

    if (!device) {
      return res.status(404).json({
        message: "Device not found",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: device.homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this device",
      });
    }

    const telemetry = await prisma.deviceTelemetry.findMany({
      where: {
        deviceId,
      },
      orderBy: {
        createdAt: "desc",
      },
      take: limit,
    });

    return res.status(200).json({
      message: "Device telemetry fetched successfully",
      data: telemetry,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function getDeviceCurrentState(req, res) {
  try {
    const userId = req.user.userId;
    const { deviceId } = req.params;

    const device = await prisma.device.findUnique({
      where: {
        id: deviceId,
      },
      include: {
        room: true,
      },
    });

    if (!device) {
      return res.status(404).json({
        message: "Device not found",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: device.homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this device",
      });
    }

    return res.status(200).json({
      message: "Device current state fetched successfully",
      data: {
        id: device.id,
        name: device.name,
        type: device.type,
        macAddress: device.macAddress,
        status: device.status,
        roomId: device.roomId,
        room: device.room,
        components: device.componentsJson ?? [],
        rules: device.rulesJson ?? { groups: [] },
        lastTelemetry: device.lastTelemetryJson ?? {},
      },
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function controlDevice(req, res) {
  try {
    const userId = req.user.userId;
    const { deviceId } = req.params;
    const { action, targetType, targetComponentId, value } = req.body;

    if (!action) {
      return res.status(400).json({
        message: "action is required",
      });
    }

    const device = await prisma.device.findUnique({
      where: {
        id: deviceId,
      },
    });

    if (!device) {
      return res.status(404).json({
        message: "Device not found",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: device.homeId,
      },
    });

    if (!membership) {
      return res.status(403).json({
        message: "You do not have access to this device",
      });
    }

    const command = {
      action,
      targetType: targetType || "device",
      targetComponentId: targetComponentId || null,
      value: value ?? null,
      createdAt: new Date().toISOString(),
    };

    const updatedDevice = await prisma.device.update({
      where: {
        id: deviceId,
      },
      data: {
        pendingCommandJson: command,
      },
    });

    return res.status(200).json({
      message: "Command queued successfully",
      data: {
        id: updatedDevice.id,
        pendingCommand: updatedDevice.pendingCommandJson,
      },
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
module.exports = {
  registerDevice,
  getHomeDevices,
  getDeviceById,
  getDevicesByRoomId,
  updateDeviceRules,
  getDeviceTelemetry,
  getDeviceCurrentState,
  controlDevice,
};
