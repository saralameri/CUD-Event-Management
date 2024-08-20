/*
  Warnings:

  - You are about to drop the column `category` on the `Event` table. All the data in the column will be lost.
  - You are about to drop the column `subCategory` on the `Event` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[chatId]` on the table `ChatMessage` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateTable
CREATE TABLE "Category" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "SubCategory" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "categoryId" INTEGER NOT NULL,
    CONSTRAINT "SubCategory_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_EventUser" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "eventId" INTEGER NOT NULL DEFAULT 1,
    CONSTRAINT "EventUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "EventUser_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_EventUser" ("eventId", "id", "userId") SELECT "eventId", "id", "userId" FROM "EventUser";
DROP TABLE "EventUser";
ALTER TABLE "new_EventUser" RENAME TO "EventUser";
CREATE UNIQUE INDEX "EventUser_eventId_key" ON "EventUser"("eventId");
CREATE TABLE "new_Chat" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "eventId" INTEGER NOT NULL DEFAULT 1,
    CONSTRAINT "Chat_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Chat" ("eventId", "id") SELECT "eventId", "id" FROM "Chat";
DROP TABLE "Chat";
ALTER TABLE "new_Chat" RENAME TO "Chat";
CREATE UNIQUE INDEX "Chat_eventId_key" ON "Chat"("eventId");
CREATE TABLE "new_Event" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "startTime" TEXT NOT NULL,
    "endTime" TEXT NOT NULL,
    "eventId" INTEGER NOT NULL DEFAULT 1,
    CONSTRAINT "Event_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "SubCategory" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Event" ("date", "description", "endTime", "id", "location", "startTime", "title") SELECT "date", "description", "endTime", "id", "location", "startTime", "title" FROM "Event";
DROP TABLE "Event";
ALTER TABLE "new_Event" RENAME TO "Event";
CREATE UNIQUE INDEX "Event_eventId_key" ON "Event"("eventId");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "SubCategory_categoryId_key" ON "SubCategory"("categoryId");

-- CreateIndex
CREATE UNIQUE INDEX "ChatMessage_chatId_key" ON "ChatMessage"("chatId");
