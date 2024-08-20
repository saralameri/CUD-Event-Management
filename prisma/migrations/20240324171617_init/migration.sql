/*
  Warnings:

  - Added the required column `text` to the `Comment` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Comment" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "user" TEXT NOT NULL,
    "text" TEXT NOT NULL,
    "eventId" INTEGER NOT NULL,
    CONSTRAINT "Comment_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Comment" ("eventId", "id", "user") SELECT "eventId", "id", "user" FROM "Comment";
DROP TABLE "Comment";
ALTER TABLE "new_Comment" RENAME TO "Comment";
CREATE UNIQUE INDEX "Comment_eventId_key" ON "Comment"("eventId");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
