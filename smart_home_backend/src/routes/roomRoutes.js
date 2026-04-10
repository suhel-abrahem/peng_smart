const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/authMiddleware");
const { createRoom } = require("../controllers/roomController");

router.post("/", authMiddleware, createRoom);

module.exports = router;
