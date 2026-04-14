const jwt = require("jsonwebtoken");

const ACCESS_TOKEN_EXPIRES_IN = "1d";
const REFRESH_TOKEN_EXPIRES_IN = "30d";

function generateAccessToken(user) {
  return jwt.sign(
    { userId: user.id, email: user.email },
    process.env.JWT_SECRET,
    { expiresIn: ACCESS_TOKEN_EXPIRES_IN },
  );
}

function generateRefreshToken(user) {
  return jwt.sign(
    { userId: user.id, email: user.email },
    process.env.JWT_REFRESH_SECRET,
    { expiresIn: REFRESH_TOKEN_EXPIRES_IN },
  );
}

function getAccessTokenExpiresAt() {
  return new Date(Date.now() + 24 * 60 * 60 * 1000);
}

function getRefreshTokenExpiresAt() {
  return new Date(Date.now() + 30 * 24 * 60 * 60 * 1000);
}

module.exports = {
  generateAccessToken,
  generateRefreshToken,
  getAccessTokenExpiresAt,
  getRefreshTokenExpiresAt,
  ACCESS_TOKEN_EXPIRES_IN,
  REFRESH_TOKEN_EXPIRES_IN,
};
