import prisma from "../lib/prisma";

export async function load() {
  const events = await prisma.event.findMany();
  const categories = await prisma.category.findMany({
    include: {
      subCategory: true,
    },
  });
  const subcategories = await prisma.category.findMany();
  return { events, categories, subcategories };
}
