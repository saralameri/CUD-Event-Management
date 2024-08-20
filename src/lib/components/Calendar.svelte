<script lang="ts">
// @ts-nocheck
 
    import {
        daysInMonth,
        scheduleDate,
        selectedDate,
        viewCurrentDate,
    } from "../../stores/calendar.store";
    import CalendarEvents from "./Calendar-Events.svelte";
    import { writable } from "svelte/store";
	export let data;
    
    const days = [
        `Monday`,
        `Tuesday`,
        `Wednesday`,
        `Thursday`,
        `Friday`,
        `Saturday`,
        `Sunday`,
    ];
    
    function startingDayPosition (dayIndex) {
        
        const firstWeekDayOfTheMonth = new Date(
            $selectedDate.getFullYear(),
            $selectedDate.getMonth() + 1,
            1
        ).getDay();
 
        if (dayStartsAtSunday(firstWeekDayOfTheMonth, dayIndex)) {
            return `grid-column-start: ${7};`;
        }
 
        if (isFirstDayOfTheMonth(dayIndex)) {
            return `grid-column-start: ${firstWeekDayOfTheMonth};`;
        }
 
        return "";
    };
 
    
    function dayClickedEvent(dayIndex) {
        scheduleDate.set(
                
                new Date(
                    $selectedDate.getFullYear(), 
                    $selectedDate.getMonth(), 
                    dayIndex)
        );
 
  }
 
  
  function isFirstDayOfTheMonth(dayIndex) {
    return dayIndex === 1;
  }
 
  
  function dayStartsAtSunday( firstWeekDayOfTheMonth, dayIndex ) {
    return firstWeekDayOfTheMonth === 0 && dayIndex === 1;
  }
  
  function SetDaysInMonth() {
        daysInMonth.set(
        new Date(
            $selectedDate.getFullYear(),
            $selectedDate.getMonth() + 1,
            0
        ).getDate()
        );
    }
 
    function previousMonth() {
        selectedDate.set(
            new Date(
            $selectedDate.getFullYear(),
            $selectedDate.getMonth() - 1,
            $selectedDate.getDate()
            )
        );
 
        viewCurrentDate.set(
        `${$selectedDate.getFullYear()} / ${$selectedDate.getMonth() + 1}`
        );
    SetDaysInMonth();
    }
 
    function nextMonth() {
        selectedDate.set(
            new Date(
                $selectedDate.getFullYear(),
                $selectedDate.getMonth() + 1,
                $selectedDate.getDate()
            )
        );
 
        viewCurrentDate.set(
        `${$selectedDate.getFullYear()} / ${$selectedDate.getMonth() + 1}`
        );
        SetDaysInMonth();
    }
</script>
 
<div id="calendar-wrapper">
    <div id="calendar-info">
        <button class="picker" on:click={() => previousMonth()}>
            ⟨
        </button>
        <div class="currentMonthYear">
            {$viewCurrentDate}
        </div>
        <button class="picker" on:click={() => nextMonth()}>
            ⟩
        </button>
    </div>
 
    <div id="calendar-container">
        {#each days as day}
            <div class="day">{day}</div>    
        {/each}
 
        {#each { length: $daysInMonth } as _, dayIndex}
            <button
                class="day-cell flex flex-col justify-start gap-2"
                style={$daysInMonth ? startingDayPosition(dayIndex + 1) : ""}
                on:click={() => dayClickedEvent(dayIndex + 1)}
            >
                {dayIndex + 1}
                <CalendarEvents eventDayIndex={dayIndex + 1} eventsForMonth={writable(data.events)} />
            </button>
        {/each}
    </div>
</div>
 
<style>
    #calendar-container {
        display: grid;
        grid-template-columns: repeat(7, 1fr);
    
        background: #efefef;
        height: 100%;
    }
    #calendar-info {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
    
        color: #ffffff;
        background: #5A5A5A;
        height: 100%;
        padding: 10px;
    }
    .currentMonthYear {
        text-align: center;
    }
    .picker {
        color: white;
        background-color: transparent;
        border: none;
    }
    .picker:hover {
        cursor: pointer;
    }
    .day-cell {
        width: 100%;
        height: 100%;
        padding: 20px;
        border: 1px solid #dbdbdb;
        background: #eaeaea;
        text-align: left;
        align-items: flex-start;
        justify-content: flex-start;
    }
    .day-cell:hover {
        background: #b1b1b1;
        cursor: pointer;
    }
    .day {
 
        padding: 20px;
        border: 1px solid #dbdbdb;
        background: #ffffff;
        margin-bottom: 10px;
    }
 </style>
  