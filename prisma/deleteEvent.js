import { PrismaClient } from "@prisma/client";

async function main() {
  const prisma = new PrismaClient();

  try {
    // Delete all records from the Event table
    await prisma.event.deleteMany();

    console.log("All records deleted from the Event table.");
  } catch (error) {
    console.error("Error deleting records:", error);
  } finally {
    // Close the Prisma Client connection
    await prisma.$disconnect();
  }
}

main();
