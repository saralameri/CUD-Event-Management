import prisma from "$lib/prisma";
import { fail, redirect } from "@sveltejs/kit";

// first to get the current info to set as the defualt values for the inputs
export async function load({ params }) {
  try {
    const selectedEventId = Number(params.eventId);

    const eventToEdit = await prisma.event.findUnique({
      where: { id: selectedEventId },
    });

    let event = {
      title: eventToEdit?.title,
      description: eventToEdit?.description,
      location: eventToEdit?.location,
      date: eventToEdit?.date,
      startTime: eventToEdit?.startTime,
      endTime: eventToEdit?.endTime,
    };

    return { event };
  } catch (error) {
    console.error("Error retrieving participants:", error);
    throw error;
  }
}

// then updating the db with new inforamtions
export const actions = {
  update: async ({ request, params }) => {
    const { description, location, title, date, startTime, endTime } =
      Object.fromEntries(await request.formData());

    if (
      !title ||
      !description ||
      !location ||
      !date ||
      !startTime ||
      !endTime
    ) {
      return fail(400, {
        description,
        location,
        title,
        date,
        startTime,
        endTime,
        missing: true,
      });
    }
    if (
      typeof title != "string" ||
      typeof description != "string" ||
      typeof location != "string" ||
      typeof date != "string" ||
      typeof startTime != "string" ||
      typeof endTime != "string"
    ) {
      return fail(400, { incorrect: true });
    }

    await prisma.event.update({
      where: {
        id: Number(params.eventId),
      },
      data: {
        title: title,
        description: description,
        location: location,
        date: date,
        startTime: startTime,
        endTime: endTime,
      },
    });

    // redirect
    throw redirect(303, "../../Wellness Society");
  },

  delete: async ({ params }) => {
    const eventId = Number(params.eventId);
    console.log(eventId);

    // delete eventUser records referencing the event
    await prisma.eventUser.deleteMany({
      where: { eventId: eventId },
    });

    // delete comment records referencing the event
    await prisma.comment.deleteMany({
      where: { eventId: eventId },
    });

    // delete the event itself
    await prisma.event.delete({
      where: { id: eventId },
    });

    // redirect
    throw redirect(303, "../../Wellness Society");
  },
};
