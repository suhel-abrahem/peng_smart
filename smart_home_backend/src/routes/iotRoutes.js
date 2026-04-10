const express = require("express");
const router = express.Router();
const {
  deviceSync,
  telemetry,
  commandResult,
} = require("../controllers/iotController");

router.post("/device-sync", deviceSync);
router.post("/telemetry", telemetry);
router.post("/command-result", commandResult);

module.exports = router;
