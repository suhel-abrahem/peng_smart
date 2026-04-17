const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function main() {
  const macAddress = "98:A3:16:F5:CB:B0";

  const deletedTelemetry = await prisma.deviceTelemetry.deleteMany({
    where: {
      device: {
        macAddress,
      },
    },
  });

  const deletedDevices = await prisma.device.deleteMany({
    where: {
      macAddress,
    },
  });

  console.log("Deleted telemetry:", deletedTelemetry.count);
  console.log("Deleted devices:", deletedDevices.count);
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
