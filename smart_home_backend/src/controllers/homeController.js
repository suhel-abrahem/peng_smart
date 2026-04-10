const prisma = require("../lib/prisma");

async function createHome(req, res) {
  try {
    const userId = req.user.userId;
    const { name } = req.body;

    if (!name) {
      return res.status(400).json({
        message: "Home name is required",
      });
    }

    const home = await prisma.home.create({
      data: {
        name,
        ownerId: userId,
        members: {
          create: {
            userId,
            role: "owner",
          },
        },
      },
      include: {
        members: true,
      },
    });

    return res.status(201).json({
      message: "Home created successfully",
      data: home,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function getMyHomes(req, res) {
  try {
    const userId = req.user.userId;

    const memberships = await prisma.homeMember.findMany({
      where: {
        userId,
      },
      include: {
        home: true,
      },
    });

    const homes = memberships.map((item) => ({
      ...item.home,
      role: item.role,
    }));

    return res.status(200).json({
      message: "Homes fetched successfully",
      data: homes,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

module.exports = {
  createHome,
  getMyHomes,
};
