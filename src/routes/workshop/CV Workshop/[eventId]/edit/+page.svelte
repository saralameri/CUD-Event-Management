<script lang="ts">
    export let data
    let eventInfo =  data.event

</script>



 <section >
    <div class="py-8 px-4 mx-auto max-w-2xl ">
        <div class="flex justify-between items-center">

            <h2 class="my-14 text-xl font-bold">Editing {eventInfo.title}</h2>
           
        </div>
        <form action="?/update" method="POST">
           
            <!-- form -->
            <div class="grid gap-6">
                <!-- Title -->
                <div>
                    <label for="title" class="mb-2 text-sm font-medium">Title</label>
                    <input value={eventInfo.title} type="text" id="title" name="title" class="bg-gray-50 border border-gray-300 text-sm rounded-lg w-full p-2 mt-2" placeholder="Enter event title...">
                </div>
                <!-- Description -->
                <div>
                    <label for="description" class="mb-2 text-sm font-medium">Description</label>
                    <input value={eventInfo.description} type="text" id="description" name="description"  class="bg-gray-50 border border-gray-300 text-sm rounded-lg w-full p-2 mt-2" placeholder="Enter event description...">
                </div>
                <!-- Details -->
                <div class="flex justify-between px-auto">
                    <!-- Date -->
                    <div class="relative justify-center w-[30%]">
                        <label for="date" class="block text-sm font-medium">Date</label>
                        <div>
                            <input value={eventInfo.date} type="date" id="date" name="date" class="bg-gray-50 border border-gray-300 text-sm rounded-lg w-full p-2 mt-2">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="absolute -translate-y-8 right-2 w-6 h-6 ">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9h13.5A2.25 2.25 0 0 1 21 11.25v7.5" />
                            </svg>
                        </div>
                    </div>
                    
                    <!-- Start Time -->
                    <div class="relative justify-center w-[30%]">
                        <label for="startTime" class="block text-sm font-medium">Start</label>
                        <div class="relative">
                            <input value={eventInfo.startTime} type="time" id="startTime" name="startTime" class="bg-gray-50 border border-gray-300 text-sm rounded-lg w-full p-2 mt-2">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="absolute -translate-y-8 right-2 w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>
                        </div>
                    </div>

                    <!-- End Time -->
                    <div class="relative justify-center w-[30%]">
                        <label for="endTime" class="block text-sm font-medium">End</label>
                        <div class="relative">
                            <input value={eventInfo.endTime} type="time" id="endTime" name="endTime" class="bg-gray-50 border border-gray-300 text-sm rounded-lg w-full p-2 mt-2">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="absolute -translate-y-8 right-2 w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>
                        </div>
                    </div>

                </div>
                <!-- Location -->
                <div>
                    <label for="location" class="mb-2 text-sm font-medium">location</label>
                    <select value={eventInfo.location} id="location" name="location" class="bg-gray-50 border border-gray-300 text-sm rounded-xl w-full h-10 mt-2">
                        <option selected>Choose location</option>
                        <option value="HUB Lobby">HUB Lobby</option>
                        <option value="HUB Atrium">HUB Atrium</option>
                        <option value="MGT Auditorium">MGT Auditorium</option>
                        <option value="HUB Majlis2">HUB Majlis2</option>
                    </select>
                </div>
                <!-- Upload Media -->
                <!-- <div>
                    <label class="block mb-2 text-sm font-medium" for="uploadMedia">Upload Media</label>
                    <input class="block w-full text-sm border border-gray-300 rounded-lg bg-gray-50 p-2" id="uploadMedia" type="file" multiple on:change={handleFiles}>
                </div>
                <ul>
                    {#each medias as media}
                      <li>{media.name}</li>
                    {/each}
                  </ul> -->
            </div>

            <!-- submit button -->
            <button class="px-5 py-2 mt-4 text-sm font-medium text-white bg-red-800 rounded-lg hover:bg-red-700" >
                Update
            </button>
            
            <button formaction="?/delete" class="px-5 py-2 mt-4 text-sm font-medium text-white bg-red-800 rounded-lg hover:bg-red-700" >
                Delete
            </button>
        
        </form>
    </div>
</section>

