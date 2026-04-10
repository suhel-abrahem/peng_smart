const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/authMiddleware");
const {
  createInvitation,
  getMyInvitations,
  acceptInvitation,
  rejectInvitation,
} = require("../controllers/invitationController");

router.post("/", authMiddleware, createInvitation);
router.get("/my", authMiddleware, getMyInvitations);
router.post("/:invitationId/accept", authMiddleware, acceptInvitation);
router.post("/:invitationId/reject", authMiddleware, rejectInvitation);

module.exports = router;