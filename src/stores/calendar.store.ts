import { writable } from "svelte/store";

const startingDate = new Date();

export const selectedDate = writable(startingDate);

export const viewCurrentDate = writable(
  `${startingDate.getMonth() + 1}/${startingDate.getFullYear()}`
);

export const daysInMonth = writable(
  new Date(startingDate.getFullYear(), startingDate.getMonth() + 1, 0).getDate()
);

export const scheduleDate = writable(undefined);

export const selectedEvent = writable(undefined);

export interface Event {
  eventName: string;
  startDateTime: Date;
  endDateTime: Date;
}
