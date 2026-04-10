const prisma = require("../lib/prisma");

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
    const { rules } = req.body;

    if (!rules) {
      return res.status(400).json({
        message: "rules are required",
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

    const updatedDevice = await prisma.device.update({
      where: {
        id: deviceId,
      },
      data: {
        rulesJson: rules,
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

module.exports = {
  registerDevice,
  getHomeDevices,
  getDeviceById,
  getDevicesByRoomId,
  updateDeviceRules,
};
