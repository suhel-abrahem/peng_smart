const prisma = require("../lib/prisma");

async function deviceSync(req, res) {
  try {
    const { macAddress } = req.body;

    if (!macAddress) {
      return res.status(400).json({
        message: "macAddress is required",
      });
    }

    const device = await prisma.device.findUnique({
      where: {
        macAddress,
      },
      include: {
        room: true,
        home: true,
      },
    });

    if (!device) {
      return res.status(404).json({
        message: "Device not found",
      });
    }

    return res.status(200).json({
      message: "Device sync successful",
      data: {
        deviceId: device.id,
        name: device.name,
        type: device.type,
        macAddress: device.macAddress,
        status: device.status,
        homeId: device.homeId,
        roomId: device.roomId,
        components: device.componentsJson ?? [],
        rules: device.rulesJson ?? { groups: [] },
        pendingCommand: device.pendingCommandJson ?? null,
      },
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function telemetry(req, res) {
  try {
    const { deviceId, temperature, payload } = req.body;

    if (!deviceId) {
      return res.status(400).json({
        message: "deviceId is required",
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

    const telemetryPayload = {
      temperature:
        temperature ?? payload?.temperature ?? payload?.tempSensor ?? null,
      tempSensor: payload?.tempSensor ?? temperature ?? null,

      pressureBar: payload?.pressureBar ?? null,

      voltage: payload?.voltage ?? null,
      current: payload?.current ?? null,
      power: payload?.power ?? null,
      energyKwh: payload?.energyKwh ?? null,

      relay1: payload?.relay1 ?? false,
      relay2: payload?.relay2 ?? false,

      updatedAt: new Date().toISOString(),
    };

    await prisma.device.update({
      where: { id: deviceId },
      data: {
        status: "online",
        lastTelemetryJson: telemetryPayload,
      },
    });

    await prisma.deviceTelemetry.create({
      data: {
        deviceId,
        temperature: telemetryPayload.temperature,
        payloadJson: telemetryPayload,
      },
    });

    return res.status(200).json({
      message: "Telemetry saved successfully",
      data: telemetryPayload,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function commandResult(req, res) {
  try {
    const { deviceId, success, result } = req.body;

    if (!deviceId) {
      return res.status(400).json({
        message: "deviceId is required",
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

    await prisma.device.update({
      where: {
        id: deviceId,
      },
      data: {
        pendingCommandJson: null,
        lastTelemetryJson: {
          ...(device.lastTelemetryJson ?? {}),
          lastCommandResult: {
            success: success ?? true,
            result: result ?? null,
            updatedAt: new Date().toISOString(),
          },
        },
      },
    });

    return res.status(200).json({
      message: "Command result saved successfully",
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
module.exports = {
  deviceSync,
  telemetry,
  commandResult,
};
