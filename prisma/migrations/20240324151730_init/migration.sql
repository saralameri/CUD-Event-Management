-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Event" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "startTime" TEXT NOT NULL,
    "endTime" TEXT NOT NULL,
    "subCategoryId" INTEGER NOT NULL,
    "subCategoryName" TEXT NOT NULL DEFAULT 'h',
    "categoryId" INTEGER NOT NULL,
    "categoryName" TEXT NOT NULL DEFAULT 'h',
    CONSTRAINT "Event_subCategoryId_fkey" FOREIGN KEY ("subCategoryId") REFERENCES "SubCategory" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Event_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Event" ("categoryId", "date", "description", "endTime", "id", "location", "startTime", "subCategoryId", "title") SELECT "categoryId", "date", "description", "endTime", "id", "location", "startTime", "subCategoryId", "title" FROM "Event";
DROP TABLE "Event";
ALTER TABLE "new_Event" RENAME TO "Event";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
