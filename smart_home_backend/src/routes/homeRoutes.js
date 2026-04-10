const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/authMiddleware");
const { createHome, getMyHomes } = require("../controllers/homeController");

router.post("/", authMiddleware, createHome);
router.get("/my", authMiddleware, getMyHomes);

module.exports = router;