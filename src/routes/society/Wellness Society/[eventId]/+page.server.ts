import prisma from "$lib/prisma";
import { fail, redirect } from "@sveltejs/kit";

export async function load({ params }) {
  try {
    const comments = await prisma.comment.findMany({
      where: {
        eventId: Number(params.eventId),
      },
      include: {
        user: true,
      },
    });

    // Extract the id parameter from the params object and parse it as an integer
    const eventId = Number(params.eventId);

    // Fetch the event details from the database using Prisma
    const eventDetails = await prisma.event.findUnique({
      where: {
        id: eventId,
      },
      include: {
        participants: true,
      },
    });

    // Check if the event details exist
    if (!eventDetails) {
      // If the event details are not found, return a 404 status with an error message
      return {
        status: 404,
        error: { message: "Event not found" },
      };
    }

    // If the event details are found, return them as props
    return {
      props: {
        event: eventDetails,
      },
      comments,
    };
  } catch (error) {
    // If an error occurs, log it and re-throw it for proper handling
    console.error("Error getting data:", error);
    throw error;
  }
}

export const actions = {
  default: async ({ request, params }) => {
    const data = await request.formData();
    let text = data.get("text");

    if (!text) {
      return fail(400, {
        text,
        missing: true,
      });
    }
    if (typeof text != "string") {
      return fail(400, { incorrect: true });
    }

    // Fetch the event using the eventId
    const eventDetails = await prisma.event.findUnique({
      where: {
        id: Number(params.eventId), // Assuming eventId is the ID of the event
      },
    });

    if (!eventDetails) {
      return fail(404, { message: "Event not found" });
    }

    // Create the comment associated with the fetched event
    await prisma.comment.create({
      data: {
        user: { connect: { id: 11 } },
        text,
        event: { connect: { id: eventDetails.id } }, // Associate the comment with the event
      },
    });
  },
};
