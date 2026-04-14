const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const prisma = require("../lib/prisma");
const {
  generateAccessToken,
  generateRefreshToken,
  getAccessTokenExpiresAt,
  getRefreshTokenExpiresAt,
} = require("../utils/tokens");

async function register(req, res) {
  try {
    const { name, email, password } = req.body;

    if (!name || !email || !password) {
      return res.status(400).json({
        message: "Name, email, and password are required",
      });
    }

    const existing = await prisma.user.findUnique({
      where: { email },
    });

    if (existing) {
      return res.status(400).json({
        message: "Email already exists",
      });
    }

    const hashed = await bcrypt.hash(password, 10);

    const user = await prisma.user.create({
      data: {
        name,
        email,
        passwordHash: hashed,
      },
    });

    const accessToken = generateAccessToken(user);
    const refreshToken = generateRefreshToken(user);

    const accessTokenExpiresAt = getAccessTokenExpiresAt();
    const refreshTokenExpiresAt = getRefreshTokenExpiresAt();
    await prisma.refreshToken.deleteMany({
      where: {
        userId: user.id,
      },
    });
    await prisma.refreshToken.create({
      data: {
        token: refreshToken,
        userId: user.id,
        expiresAt: refreshTokenExpiresAt,
      },
    });

    return res.status(201).json({
      message: "Registered successfully",
      data: {
        user: {
          id: user.id,
          name: user.name,
          email: user.email,
        },
        token: accessToken,
        refreshToken,
        accessTokenExpiresAt,
        refreshTokenExpiresAt,
      },
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function login(req, res) {
  try {
    const { email, password } = req.body;

    if (!email || !password) {
      return res.status(400).json({
        message: "Email and password are required",
      });
    }

    const user = await prisma.user.findUnique({
      where: { email },
    });

    if (!user) {
      return res.status(400).json({
        message: "Invalid credentials",
      });
    }

    const isMatch = await bcrypt.compare(password, user.passwordHash);

    if (!isMatch) {
      return res.status(400).json({
        message: "Invalid credentials",
      });
    }

    const accessToken = generateAccessToken(user);
    const refreshToken = generateRefreshToken(user);

    const accessTokenExpiresAt = getAccessTokenExpiresAt();
    const refreshTokenExpiresAt = getRefreshTokenExpiresAt();
    await prisma.refreshToken.deleteMany({
      where: {
        userId: user.id,
      },
    });
    await prisma.refreshToken.create({
      data: {
        token: refreshToken,
        userId: user.id,
        expiresAt: refreshTokenExpiresAt,
      },
    });

    return res.status(200).json({
      message: "Login successful",
      data: {
        user: {
          id: user.id,
          name: user.name,
          email: user.email,
        },
        token: accessToken,
        refreshToken,
        accessTokenExpiresAt,
        refreshTokenExpiresAt,
      },
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function me(req, res) {
  try {
    const user = await prisma.user.findUnique({
      where: { id: req.user.userId },
      select: {
        id: true,
        name: true,
        email: true,
      },
    });

    return res.status(200).json({
      data: user,
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function refreshToken(req, res) {
  try {
    const { refreshToken } = req.body;

    if (!refreshToken) {
      return res.status(400).json({
        message: "refreshToken is required",
      });
    }

    const savedToken = await prisma.refreshToken.findUnique({
      where: {
        token: refreshToken,
      },
      include: {
        user: true,
      },
    });

    if (!savedToken) {
      return res.status(401).json({
        message: "Invalid refresh token",
      });
    }

    if (savedToken.expiresAt < new Date()) {
      await prisma.refreshToken.delete({
        where: {
          token: refreshToken,
        },
      });

      return res.status(401).json({
        message: "Refresh token expired",
      });
    }

    let payload;
    try {
      payload = jwt.verify(refreshToken, process.env.JWT_REFRESH_SECRET);
    } catch (_) {
      await prisma.refreshToken.deleteMany({
        where: {
          token: refreshToken,
        },
      });

      return res.status(401).json({
        message: "Invalid refresh token",
      });
    }

    if (payload.userId !== savedToken.userId) {
      return res.status(401).json({
        message: "Invalid refresh token",
      });
    }

    const newAccessToken = generateAccessToken(savedToken.user);
    const newRefreshToken = generateRefreshToken(savedToken.user);

    const accessTokenExpiresAt = getAccessTokenExpiresAt();
    const refreshTokenExpiresAt = getRefreshTokenExpiresAt();

    await prisma.refreshToken.delete({
      where: {
        token: refreshToken,
      },
    });

    await prisma.refreshToken.create({
      data: {
        token: newRefreshToken,
        userId: savedToken.user.id,
        expiresAt: refreshTokenExpiresAt,
      },
    });

    return res.status(200).json({
      message: "Token refreshed successfully",
      data: {
        token: newAccessToken,
        refreshToken: newRefreshToken,
        accessTokenExpiresAt,
        refreshTokenExpiresAt,
      },
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

async function logout(req, res) {
  try {
    const { refreshToken } = req.body;

    if (!refreshToken) {
      return res.status(400).json({
        message: "refreshToken is required",
      });
    }

    await prisma.refreshToken.deleteMany({
      where: {
        token: refreshToken,
      },
    });

    return res.status(200).json({
      message: "Logged out successfully",
    });
  } catch (e) {
    return res.status(500).json({
      message: e.message,
    });
  }
}

module.exports = {
  register,
  login,
  me,
  refreshToken,
  logout,
};
