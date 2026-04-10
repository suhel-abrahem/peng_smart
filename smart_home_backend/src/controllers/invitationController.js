const prisma = require("../lib/prisma");

async function createInvitation(req, res) {
  try {
    const userId = req.user.userId;
    const { homeId, invitedEmail, role } = req.body;

    if (!homeId || !invitedEmail || !role) {
      return res.status(400).json({
        message: "homeId, invitedEmail and role are required",
      });
    }

    const membership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId,
      },
    });

    if (!membership || !["owner", "admin"].includes(membership.role)) {
      return res.status(403).json({
        message: "You are not allowed to invite users to this home",
      });
    }

    const alreadyMemberUser = await prisma.user.findUnique({
      where: { email: invitedEmail },
      include: {
        memberships: true,
      },
    });

    if (alreadyMemberUser) {
      const alreadyMember = alreadyMemberUser.memberships.find(
        (item) => item.homeId === homeId
      );

      if (alreadyMember) {
        return res.status(400).json({
          message: "User is already a member of this home",
        });
      }
    }

    const existingInvitation = await prisma.invitation.findFirst({
      where: {
        homeId,
        invitedEmail,
        status: "pending",
      },
    });

    if (existingInvitation) {
      return res.status(400).json({
        message: "A pending invitation already exists",
      });
    }

    const invitation = await prisma.invitation.create({
      data: {
        homeId,
        invitedEmail,
        role,
        createdByUserId: userId,
        expiresAt: new Date(Date.now() + 7 * 24 * 60 * 60 * 1000),
      },
    });

    return res.status(201).json({
      message: "Invitation created successfully",
      data: invitation,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function getMyInvitations(req, res) {
  try {
    const userId = req.user.userId;

    const user = await prisma.user.findUnique({
      where: { id: userId },
    });

    const invitations = await prisma.invitation.findMany({
      where: {
        invitedEmail: user.email,
        status: "pending",
      },
      include: {
        home: true,
        createdBy: {
          select: {
            id: true,
            name: true,
            email: true,
          },
        },
      },
      orderBy: {
        createdAt: "desc",
      },
    });

    return res.status(200).json({
      message: "Invitations fetched successfully",
      data: invitations,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function acceptInvitation(req, res) {
  try {
    const userId = req.user.userId;
    const { invitationId } = req.params;

    const user = await prisma.user.findUnique({
      where: { id: userId },
    });

    const invitation = await prisma.invitation.findUnique({
      where: { id: invitationId },
    });

    if (!invitation) {
      return res.status(404).json({
        message: "Invitation not found",
      });
    }

    if (invitation.invitedEmail !== user.email) {
      return res.status(403).json({
        message: "This invitation does not belong to you",
      });
    }

    if (invitation.status !== "pending") {
      return res.status(400).json({
        message: "Invitation is no longer pending",
      });
    }

    if (new Date(invitation.expiresAt) < new Date()) {
      await prisma.invitation.update({
        where: { id: invitationId },
        data: { status: "expired" },
      });

      return res.status(400).json({
        message: "Invitation has expired",
      });
    }

    const existingMembership = await prisma.homeMember.findFirst({
      where: {
        userId,
        homeId: invitation.homeId,
      },
    });

    if (existingMembership) {
      return res.status(400).json({
        message: "You are already a member of this home",
      });
    }

    await prisma.homeMember.create({
      data: {
        userId,
        homeId: invitation.homeId,
        role: invitation.role,
      },
    });

    await prisma.invitation.update({
      where: { id: invitationId },
      data: { status: "accepted" },
    });

    return res.status(200).json({
      message: "Invitation accepted successfully",
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function rejectInvitation(req, res) {
  try {
    const userId = req.user.userId;
    const { invitationId } = req.params;

    const user = await prisma.user.findUnique({
      where: { id: userId },
    });

    const invitation = await prisma.invitation.findUnique({
      where: { id: invitationId },
    });

    if (!invitation) {
      return res.status(404).json({
        message: "Invitation not found",
      });
    }

    if (invitation.invitedEmail !== user.email) {
      return res.status(403).json({
        message: "This invitation does not belong to you",
      });
    }

    if (invitation.status !== "pending") {
      return res.status(400).json({
        message: "Invitation is no longer pending",
      });
    }

    await prisma.invitation.update({
      where: { id: invitationId },
      data: { status: "rejected" },
    });

    return res.status(200).json({
      message: "Invitation rejected successfully",
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

module.exports = {
  createInvitation,
  getMyInvitations,
  acceptInvitation,
  rejectInvitation,
};