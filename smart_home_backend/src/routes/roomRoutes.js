const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/authMiddleware");
const {
  createRoom,
  getRoomsByHomeId,
} = require("../controllers/roomController");

router.post("/", authMiddleware, createRoom);
router.get("/home/:homeId", authMiddleware, getRoomsByHomeId);

module.exports = router;
