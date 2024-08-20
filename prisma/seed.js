import { PrismaClient } from "@prisma/client";
import data from "../src/lib/data.json" assert { type: "json" };

const prisma = new PrismaClient();

async function seed() {
  try {
    for (const userData of data) {
      const { firstName, lastName, email, department, events } = userData;

      const user = await prisma.user.create({
        data: {
          firstName,
          lastName,
          email,
          department,
        },
      });

      console.log(
        `User ${user.firstName} ${user.lastName} created with events.`
      );
    }
  } catch (error) {
    console.error("Error seeding data:", error);
  } finally {
    await prisma.$disconnect();
  }
}

seed();
