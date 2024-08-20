<script>
// @ts-nocheck
    import {
        selectedEvent,
        selectedDate,
    } from "../../stores/calendar.store";
    
    export let eventDayIndex;
    export let eventsForMonth;
    
    $: getEvents = (dayIndex) => {
      if (!dayIndex || !$eventsForMonth || !$selectedDate) {
        return;
      }
      const eventsForSelectedDate = $eventsForMonth.filter(
        (e) =>
        parseInt(e.date.split("-")[0]) === $selectedDate.getFullYear() &&
        parseInt(e.date.split("-")[1]) + 1 === $selectedDate.getMonth() &&
        parseInt(e.date.split("-")[2]) === eventDayIndex
    );
    return eventsForSelectedDate;
  };
 
  function eventClicked(event) {
        selectedEvent.set(
                event
        );
 
  }
</script>
 
{#each getEvents(eventDayIndex) as event}
  <button
      class="event w-full"
      on:click={() => eventClicked(event.id)}
  >
    {event.title}
    <br />
    {event.startTime} - {event.endTime}
  </button>
{/each}
 
<style>
  .event {
    background: #f8d8d7;
    padding: 5px;
    margin-bottom: 5px;
    border-bottom: 4px solid #AA3335;
  }
</style>
