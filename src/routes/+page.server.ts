import prisma from "$lib/prisma";

export const load = async () => {
  const events = await prisma.event.findMany();
  return {
    events,
  };
};
