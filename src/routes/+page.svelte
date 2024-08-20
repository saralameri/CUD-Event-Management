<script>
import Calendar from "../lib/components/Calendar.svelte";
export let data;

</script>
 
<main>
    <div class="mx-24 my-16">
 
        <Calendar { data }/>
        <div class="flex justify-end w-full mt-7">
            <a href="/createEvent">
            
                <button class="px-5 py-2 text-sm font-medium text-white bg-red-800 rounded-lg hover:bg-red-700">Create Event</button>
            </a>
        </div>
    </div>
</main>
   