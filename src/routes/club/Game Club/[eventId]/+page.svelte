<script lang="ts">
  // @ts-nocheck
  import EventDetails from "$lib/components/EventDetails.svelte";

  export let form;
  export let data;
  // defining event data and making sure undefined case is handled
  const event = data.props?.event || {
    id: "",
    title: "",
    description: "",
    location: "",
    date: "",
    startTime: "",
    endTime: "",
    participants: [],
  };

  const category = "club"
  const subcategory = "Game Club"

</script>
  
  <div>
    <section>
      <div class="text-2xl font-bold text-white bg-red-800 text-center w-[20%] mt-10 mb-10 rounded-r-full py-4"><h1>{event.title}</h1></div>
    </section>
  </div>

 <body>
  <EventDetails 
  id={event.id}
  date={event.date}
  startTime={event.startTime}
  endTime={event.endTime}
  location={event.location}
  description={event.description}
  participants={event.participants}
  category={category}
  subcategory={subcategory}
  />

    <!-- Discussion  -->
  <div class=" bg-neutral-100 m-16 mx-20 p-8 rounded-lg"> 
    <h1 class="font-bold text-xl pb-10 ">Discussion</h1>

    <form method="POST">
      {#if form?.missing}<p class="error">The form fields are required</p>{/if}

        <!-- Comment input -->
        <div class="flex flex-row  ">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-20 h-20 mr-5">
            <path fill-rule="evenodd" d="M18.685 19.097A9.723 9.723 0 0 0 21.75 12c0-5.385-4.365-9.75-9.75-9.75S2.25 6.615 2.25 12a9.723 9.723 0 0 0 3.065 7.097A9.716 9.716 0 0 0 12 21.75a9.716 9.716 0 0 0 6.685-2.653Zm-12.54-1.285A7.486 7.486 0 0 1 12 15a7.486 7.486 0 0 1 5.855 2.812A8.224 8.224 0 0 1 12 20.25a8.224 8.224 0 0 1-5.855-2.438ZM15.75 9a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0Z" clip-rule="evenodd" />
          </svg>
          <div class="flex flex-col w-full ">
            <input class=" border-2 border-gray-300 rounded-xl pb-44 p-5 overflow-y-auto overflow-scroll" type="text" value={form?.text??""} id="text" name="text" placeholder="Enter your comment ...">
            <button class="bg-red-800 hover:bg-red-700 px-4 py-2 text-slate-50 text-sm rounded-lg w-[10%] my-12" type="submit">Send</button>

          </div>
        </div>
    </form>
    {#each data.comments as {user, text}}
      <div class="flex flex-col items-start p-7 ml-24 mt-4 bg-white border-2 border-gray-300 rounded-xl">
        <div class="flex flex-row items-center">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-10 h-10 mr-3">
                <path fill-rule="evenodd" d="M18.685 19.097A9.723 9.723 0 0 0 21.75 12c0-5.385-4.365-9.75-9.75-9.75S2.25 6.615 2.25 12a9.723 9.723 0 0 0 3.065 7.097A9.716 9.716 0 0 0 12 21.75a9.716 9.716 0 0 0 6.685-2.653Zm-12.54-1.285A7.486 7.486 0 0 1 12 15a7.486 7.486 0 0 1 5.855 2.812A8.224 8.224 0 0 1 12 20.25a8.224 8.224 0 0 1-5.855-2.438ZM15.75 9a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0Z" clip-rule="evenodd" />
            </svg>
            <p class="font-semibold">{user.firstName} {user.lastName}</p>
        </div>
        <p class="text-gray-700 mt-5 ml-1">{text}</p>
      </div>
    {/each}

  </div>

</body>


