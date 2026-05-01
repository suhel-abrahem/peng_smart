require("dotenv").config();

const express = require("express");
const cors = require("cors");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();
const authRoutes = require("./routes/authRoutes");
const homeRoutes = require("./routes/homeRoutes");
const roomRoutes = require("./routes/roomRoutes");
const invitationRoutes = require("./routes/invitationRoutes");
const deviceRoutes = require("./routes/deviceRoutes");
const iotRoutes = require("./routes/iotRoutes");

const app = express();

app.use(cors());
app.use(express.json());

app.use("/auth", authRoutes);
app.use("/homes", homeRoutes);
app.use("/rooms", roomRoutes);
app.use("/invitations", invitationRoutes);
app.use("/devices", deviceRoutes);
app.use("/iot", iotRoutes);

app.get("/", (req, res) => {
  res.send("API Running 🚀");
});

// ✅ OFFLINE CHECK
setInterval(async () => {
  const now = new Date();

  try {
    await prisma.device.updateMany({
      where: {
        lastSeenAt: {
          lt: new Date(now.getTime() - 60 * 1000),
        },
      },
      data: {
        status: "offline",
      },
    });

    console.log("🔄 Checked offline devices");
  } catch (err) {
    console.error("❌ Error updating offline devices:", err);
  }
}, 30000);

const PORT = process.env.PORT || 3000;

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
});
