import prisma from "$lib/prisma";
import { fail, redirect } from "@sveltejs/kit";

export const actions = {
  default: async ({ request }) => {
    const data = await request.formData();

    console.log(data);
    let title = data.get("title");
    let description = data.get("description");
    let location = data.get("location");
    let category = data.get("category");
    let subcategory = data.get("subcategory");
    let date = data.get("date");
    let startTime = data.get("startTime");
    let endTime = data.get("endTime");
    console.log(title);

    if (
      !title ||
      !description ||
      !location ||
      !category ||
      !subcategory ||
      !date ||
      !startTime ||
      !endTime
    ) {
      return fail(400, {
        title,
        description,
        location,
        category,
        subcategory,
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
      typeof subcategory != "string" ||
      typeof category != "string" ||
      typeof date != "string" ||
      typeof startTime != "string" ||
      typeof endTime != "string"
    ) {
      return fail(400, { incorrect: true });
    }

    // Find category (assuming it exists and name is unique)
    const categoryRecord = await prisma.category.findFirst({
      where: { name: category },
    });

    // Find or create subcategory
    let subcategoryRecord = await prisma.subCategory.findFirst({
      where: { name: subcategory },
    });
    if (!subcategoryRecord && categoryRecord) {
      subcategoryRecord = await prisma.subCategory.create({
        data: {
          name: subcategory,
          description: "Default description",
          category: {
            connect: { id: categoryRecord.id },
          },
        },
      });
    }

    console.log(categoryRecord, subcategoryRecord);
    // Create event
    if (categoryRecord && subcategoryRecord)
      await prisma.event.create({
        data: {
          title,
          description,
          location,
          category: {
            connect: { id: categoryRecord.id },
          },
          subCategory: {
            connect: { id: subcategoryRecord.id },
          },
          date,
          startTime,
          endTime,
        },
      });
  },
};

// try {
//   const event = await prisma.event.create({
//     data: {
//       title,
//       description,
//       location,
//       date,
//       startTime,
//       endTime
//     },
//   });

//   return {
//     success: true,
//     eventId: event.id,
//   };
// } catch (error) {
//   console.error("Error creating event:", error);
//   return {
//     success: false,
//     message: "An error occurred while creating the event.",
//   };
// }
