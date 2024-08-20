import prisma from "$lib/prisma";

export async function load({ params }) {
  try {
    const eventId = Number(params.eventId);

    const participants = await prisma.eventUser.findMany({
      where: { eventId: eventId },
      include: { user: true },
    });

    let users = participants.map((participant) => ({
      firstName: participant.user.firstName,
      lastName: participant.user.lastName,
      email: participant.user.email,
      department: participant.user.department,
    }));

    return { users };
  } catch (error) {
    console.error("Error retrieving participants:", error);
    throw error;
  }
}
