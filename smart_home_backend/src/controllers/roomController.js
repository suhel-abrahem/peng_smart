const prisma = require("../lib/prisma");

async function createRoom(req, res) {
  try {
    const userId = req.user.userId;
    const { name, homeId } = req.body;

    if (!name || !homeId) {
      return res.status(400).json({
        message: "Room name and homeId are required",
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

    const existingRoom = await prisma.room.findFirst({
      where: {
        homeId,
        name,
      },
    });

    if (existingRoom) {
      return res.status(400).json({
        message: "Room already exists in this home",
      });
    }

    const room = await prisma.room.create({
      data: {
        name,
        homeId,
      },
    });

    return res.status(201).json({
      message: "Room created successfully",
      data: room,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}
async function getRoomsByHomeId(req, res) {
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

    const rooms = await prisma.room.findMany({
      where: {
        homeId,
      },
      orderBy: {
        createdAt: "desc",
      },
    });

    return res.status(200).json({
      message: "Rooms fetched successfully",
      data: rooms,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

module.exports = {
  createRoom,
  getRoomsByHomeId,
};
