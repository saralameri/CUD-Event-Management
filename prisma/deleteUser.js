import { PrismaClient } from "@prisma/client";

async function main() {
  const prisma = new PrismaClient();

  try {
    // Delete all records from the User table
    await prisma.user.deleteMany();

    console.log("All records deleted from the User table.");
  } catch (error) {
    console.error("Error deleting records:", error);
  } finally {
    // Close the Prisma Client connection
    await prisma.$disconnect();
  }
}

main();
