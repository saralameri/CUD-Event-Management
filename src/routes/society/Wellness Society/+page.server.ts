import prisma from "$lib/prisma";

export async function load() {
  const subCategories = await prisma.subCategory.findMany({
    where: {
      name: "Wellness Society",
    },
    include: {
      events: true,
    },
  });
  return { subCategories };
}

// // delete event
// export const actions = {
//   default: async ({ params, request }) => {
//     const form = await request.formData();
//     // const eid = form.get("eventId");

//     console.log(form);
//     console.log(params);
//     // const { id } = Object.fromEntries(await request.formData());

//     // await prisma.event.delete({
//     //   where: {
//     //     id: Number(id),
//     //   },
//     // });
//   },
// };
