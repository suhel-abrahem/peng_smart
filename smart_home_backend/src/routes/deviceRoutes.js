const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/authMiddleware");
const {
  registerDevice,
  getHomeDevices,
  getDevicesByRoomId,
  getDeviceById,
  updateDeviceRules,
  getDeviceTelemetry,
  getDeviceCurrentState,
  controlDevice,
} = require("../controllers/deviceController");

router.post("/register", authMiddleware, registerDevice);
router.get("/home/:homeId", authMiddleware, getHomeDevices);
router.get("/room/:roomId", authMiddleware, getDevicesByRoomId);
router.get("/:deviceId", authMiddleware, getDeviceById);
router.put("/:deviceId/rules", authMiddleware, updateDeviceRules);
router.put("/:deviceId/control", authMiddleware, controlDevice);
router.get("/:deviceId/telemetry", authMiddleware, getDeviceTelemetry);
router.get("/:deviceId/current-state", authMiddleware, getDeviceCurrentState);

module.exports = router;
