PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "_prisma_migrations" (
    "id"                    TEXT PRIMARY KEY NOT NULL,
    "checksum"              TEXT NOT NULL,
    "finished_at"           DATETIME,
    "migration_name"        TEXT NOT NULL,
    "logs"                  TEXT,
    "rolled_back_at"        DATETIME,
    "started_at"            DATETIME NOT NULL DEFAULT current_timestamp,
    "applied_steps_count"   INTEGER UNSIGNED NOT NULL DEFAULT 0
);
INSERT INTO _prisma_migrations VALUES('93f83670-1f01-4f38-b9b8-c855444d6336','9da7ad33f7dc16ee6e693abc14749e9fc9e0d44160d8418a2535ddd48e515ab5',1710706329945,'20240309171133_init',NULL,NULL,1710706329941,1);
INSERT INTO _prisma_migrations VALUES('33bef7f4-0dcf-4ad7-aa06-af4761c49877','385d15d7a7f05ada92faff8c8d44fa4ab15ff85011635230d91c93c494ebfe2c',1710706329949,'20240309201101_init',NULL,NULL,1710706329945,1);
INSERT INTO _prisma_migrations VALUES('77b0f65b-fefc-41b7-8de8-a69b22afd66f','345695125112ba8ebeebcd428c2f217f38f1c990ec88e2e38e79b917f26bb33b',1710706329952,'20240309202516_init',NULL,NULL,1710706329950,1);
INSERT INTO _prisma_migrations VALUES('6f0ccd7d-10e7-4117-8cd6-55f2cd9cc6ab','babd34fdb07bb94cb0ea10d232c4345290c9e17b99e73d8f7c779debcb11e5e8',1710706329955,'20240309203441_init',NULL,NULL,1710706329953,1);
INSERT INTO _prisma_migrations VALUES('ef75206f-11f5-4373-b820-92aa84808558','8bcbb05b0a3b9fb474158bd37a67259fbea826df1c4f6046e77f9dbb0b819ee5',1710706329957,'20240310065600_init',NULL,NULL,1710706329955,1);
INSERT INTO _prisma_migrations VALUES('60d2e9a8-cd64-4968-9e3e-49dc86e554c2','d1fd7539216dbe4f968ce789b410ab31f89324c3037802cca1b5167fd0967637',1710706329960,'20240310200841_init',NULL,NULL,1710706329958,1);
INSERT INTO _prisma_migrations VALUES('3d5feaa6-e631-42ad-9703-a6a39290d169','bf429c0c852bc439f4bf14bf62cfc56482d0fd684661d3f904e31501220ff545',1710706329962,'20240310201342_init',NULL,NULL,1710706329960,1);
INSERT INTO _prisma_migrations VALUES('1e8833e3-4b20-4b4d-95d9-5e44ad9bee7f','463ec0e69812ffd92f59170f54e5c7d67cc281ca6873dafac713fff973b510e8',1710706329964,'20240312110342_init',NULL,NULL,1710706329962,1);
INSERT INTO _prisma_migrations VALUES('747cb27f-713b-4acb-bc68-b77d7dc66ce7','f24c73bea2a0c7df45481428baedf77821022461663dac354b7221ee64374b24',1710706329966,'20240312161014_init',NULL,NULL,1710706329964,1);
INSERT INTO _prisma_migrations VALUES('209f4581-2c77-43a8-acdb-536f3644b958','788527b279545f7e66f92718d6657678628863b272de94170e8b6d4d76658099',1710706329969,'20240317191659_init',NULL,NULL,1710706329966,1);
INSERT INTO _prisma_migrations VALUES('a9015303-9f0b-4ecb-b7cf-bbc54811e8bf','24494fc98e242444054320dd9fec84b0cae55133ac8b71617cb5026303a4882c',1710706329975,'20240317201033_init',NULL,NULL,1710706329969,1);
INSERT INTO _prisma_migrations VALUES('50e77c6e-04eb-4916-8b29-f69bed47abd4','e325e9a0095e5891711643736d3b43f93be90d825c9193ed6e6ff810cf88f7af',1710706329993,'20240317201209_init',NULL,NULL,1710706329988,1);
INSERT INTO _prisma_migrations VALUES('7f97ecfb-d3b8-417f-aba6-714ca5888cfb','5fd26a276febdf4db9b2da25f106e1ad3691f852368a9d2cb60247f60b862cb2',1710707743836,'20240317203543_init',NULL,NULL,1710707743835,1);
INSERT INTO _prisma_migrations VALUES('dfe99c09-2ebb-4612-821d-d991b9120ae2','7d07d7f9cd468c22468b2a66198b2d6251e864f41ac0a146721942a083277de6',1710708855597,'20240317205415_init',NULL,NULL,1710708855595,1);
INSERT INTO _prisma_migrations VALUES('b521553a-c5cd-4bd7-bdd0-1268caf88c9e','1d72f6fdb54876298dc47c22a0b587212660f4b9f4e3284f79b7916c04230a03',1711276732025,'20240324103852_init',NULL,NULL,1711276732020,1);
INSERT INTO _prisma_migrations VALUES('868ccb2a-47ec-4c3e-945e-58bacc09f0e7','5319703a993c5af52ff5ceaabd1fb0434861e4ecfcb0aa6992afc36cca676192',1711280107904,'20240324113507_init',NULL,NULL,1711280107900,1);
INSERT INTO _prisma_migrations VALUES('bf316dff-289a-41dd-bddb-338fced6775f','885eca26189c7bbd8a69ecb1cff2cb5bf0ab42091bcbed9d536774d6c492d997',1711287081982,'20240324133121_init',NULL,NULL,1711287081978,1);
INSERT INTO _prisma_migrations VALUES('b9f33745-5c49-4d05-b7e4-22ffc14b59cb','0ea336c2427fffde78e656270645a5094bc7067191dcb37d4afd22178b628b35',1711289974880,'20240324141934_init',NULL,NULL,1711289974874,1);
INSERT INTO _prisma_migrations VALUES('fdfbd907-03df-4bd5-869d-b733161ff3fe','0332c121b676e6038a2c28a14b9585501f0c81642c7808c89159236752eb740a',1711290247136,'20240324142407_init',NULL,NULL,1711290247131,1);
INSERT INTO _prisma_migrations VALUES('c2063782-211c-4d8b-84fc-2ebad3e72aff','6f05eb6e1b806379555ab7d0820fdcb349456fb0c35aec85330df4be0e9a0d2d',1711293450816,'20240324151730_init',NULL,NULL,1711293450811,1);
INSERT INTO _prisma_migrations VALUES('69d5dc2f-dd07-44ec-a5cf-8937208a1c48','86de55b29f8de7966dc82a39165947ae1e09387c1c9a0a05de1096a7c0c69c19',1711300026805,'20240324170706_init',NULL,NULL,1711300026802,1);
INSERT INTO _prisma_migrations VALUES('98a627aa-1b4e-4c7c-9d0b-d2a8b5e0d685','0dc53810b0a28d751b3b9d529d0c01217756cb1ff83e29bec0b6a3a6d23f1ae5',1711300080797,'20240324170800_init',NULL,NULL,1711300080796,1);
INSERT INTO _prisma_migrations VALUES('0dc0dc74-657a-4275-b061-27f682857b76','026a985d4a553a9353857b20f17379dc08bb1389455dbbd3b315403667f497f3',1711300577274,'20240324171617_init',NULL,NULL,1711300577271,1);
INSERT INTO _prisma_migrations VALUES('edf0a1c5-df5a-4bda-9d0a-beb1b4a168c4','28b600582029076c40d85fd4d28a3d9ad882980ab24728914c11a0c1949420ad',1711302483908,'20240324174803_init',NULL,NULL,1711302483904,1);
CREATE TABLE IF NOT EXISTS "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "department" TEXT NOT NULL
);
INSERT INTO User VALUES(3,'John','Doe','20220001268@students.cud.ac.ae','School of Architecture and Interior Design');
INSERT INTO User VALUES(4,'Jane','Smith','20230008467@students.cud.ac.ae','Faculty of Communication, Arts and Sciences');
INSERT INTO User VALUES(5,'Michael','Johnson','20240012093@students.cud.ac.ae','School of Management');
INSERT INTO User VALUES(6,'Emily','Brown','20210007651@students.cud.ac.ae','School of Engineering, Applied Science and Technology');
INSERT INTO User VALUES(7,'David','Lee','20220003958@students.cud.ac.ae','School of Architecture and Interior Design');
INSERT INTO User VALUES(8,'Sarah','Williams','20220005239@students.cud.ac.ae','Faculty of Communication, Arts and Sciences');
INSERT INTO User VALUES(9,'Christopher','Martinez','20230009875@students.cud.ac.ae','School of Management');
INSERT INTO User VALUES(10,'Jessica','Taylor','20240002418@students.cud.ac.ae','School of Engineering, Applied Science and Technology');
INSERT INTO User VALUES(11,'Matthew','Garcia','20210003762@students.cud.ac.ae','School of Architecture and Interior Design');
INSERT INTO User VALUES(12,'Amanda','Thomas','20230007195@students.cud.ac.ae','Faculty of Communication, Arts and Sciences');
CREATE TABLE IF NOT EXISTS "Category" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);
INSERT INTO Category VALUES(1,'Club');
INSERT INTO Category VALUES(2,'Society');
INSERT INTO Category VALUES(3,'Workshop');
CREATE TABLE IF NOT EXISTS "SubCategory" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "categoryId" INTEGER NOT NULL,
    CONSTRAINT "SubCategory_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO SubCategory VALUES(1,'Dance Club','Dancers from different disciplines and backgrounds exchange the culture of their craft, and create never seen before fusions on stage.',1);
INSERT INTO SubCategory VALUES(2,'Music Club','The Music Club provides a meeting ground for vocalists, percussionists, practitioners of stringed instruments, and more, to come together and to understand other forms of music, and to collaborate with each other. The club also invites writers and poets to come and develop songs that can be written and performed on stage.',1);
INSERT INTO SubCategory VALUES(3,'Game Club','Level up your social life! Join our Game Club for board games, video games, and friendly competition. All skill levels welcome!',1);
INSERT INTO SubCategory VALUES(4,'Robotics Club','The CUD Robotics Club brings together students from across the University to work together in the creation of working robots, providing fun way to develop new skills and to explore the future of technology, while meeting other students from around the University.',1);
INSERT INTO SubCategory VALUES(5,'Wellness Society','Led by the university’s student Wellness Society, the Wellness Wednesdays program encourages participants to focus on self-care amid the growing pressures young people are facing in daily life.',2);
INSERT INTO SubCategory VALUES(6,'Student Volunteer Society','Make a difference on campus and beyond! Join our student volunteer society and connect with meaningful causes.',2);
INSERT INTO SubCategory VALUES(7,'Adobe Photoshop Workshop','Go wherever your imagination takes you. Fix flaws and swap backgrounds in a few clicks. Add effects, mix up colors, and change someone’s expression. With powerful editing tools, you can quickly give your photos the look you want. Grab inspiration from all around you and have fun experimenting. Blend and mash up photos, graphics, effects, and colors to create something entirely new. Draw, paint, doodle, and dabble with digital brushes that work and feel like the real thing. Spray-paint a wall, watch watercolors bloom, and get smudgy with oils.',3);
INSERT INTO SubCategory VALUES(8,'Filmmaking Workshop','The Filmmaking, Videography workshop short course at Canadian University Dubai provides students with innovative, technical knowledge of setting up and operating videography with a focus on practical experience. Students will have the opportunity to experience the A to Z of operations from basics of camera settings such as exposure triangles and compositions, to lighting in the chroma screens. ',3);
INSERT INTO SubCategory VALUES(9,'CV Workshop','In preparation for our exciting Career Fair, the Career Services team at CUD is offering specialized CV Workshops & Clinics. These sessions will enhance your resume, making it a powerful tool to attract employers. With the Career Fair on the horizon, presenting a polished and impactful CV to employers is more crucial than ever. Join us for these workshops and ensure your CV stands out at the Career Fair!',3);
CREATE TABLE IF NOT EXISTS "EventUser" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "eventId" INTEGER NOT NULL,
    CONSTRAINT "EventUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "EventUser_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO EventUser VALUES(1,5,3);
INSERT INTO EventUser VALUES(2,8,4);
INSERT INTO EventUser VALUES(4,4,4);
INSERT INTO EventUser VALUES(5,11,3);
INSERT INTO EventUser VALUES(6,6,3);
INSERT INTO EventUser VALUES(16,12,3);
INSERT INTO EventUser VALUES(18,5,2);
INSERT INTO EventUser VALUES(19,3,2);
INSERT INTO EventUser VALUES(20,9,2);
INSERT INTO EventUser VALUES(21,11,2);
INSERT INTO EventUser VALUES(22,7,1);
INSERT INTO EventUser VALUES(23,5,1);
INSERT INTO EventUser VALUES(24,6,1);
INSERT INTO EventUser VALUES(25,9,1);
CREATE TABLE IF NOT EXISTS "Event" (
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
INSERT INTO Event VALUES(1,'Clay Play','Clay play is a creative workshop that invites participants to delve into the world of pottery and clay sculpting. Through hands-on experiences and expert guidance, attendees can explore various techniques, from shaping clay on the wheel to hand-building intricate sculptures. This interactive session not only nurtures artistic skills but also encourages self-expression and imagination, making it an engaging and rewarding experience for all.','HUB Lobby','2024-01-14','12:00','14:30',5,'Wellness Society',2,'Society');
INSERT INTO Event VALUES(2,'FIFA Competition','The FIFA competition brings together avid gamers for an exhilarating esports event centered around virtual football matches. Players showcase their gaming prowess, strategic thinking, and sportsmanship as they compete in thrilling matchups using the popular FIFA video game series. From intense one-on-one showdowns to team-based tournaments, this event celebrates the competitive spirit and excitement of digital sports, captivating both participants and spectators alike.','HUB Atrium','2023-12-22','14:30','17:00',3,'Game Club',1,'Club');
INSERT INTO Event VALUES(3,'Art Date','An art date is a delightful and enriching experience that combines the joys of art with social interaction. Whether it''s a cozy painting session with a partner or a group outing to explore galleries and art exhibitions, an art date offers a unique blend of creativity, relaxation, and connection. Participants can unleash their artistic talents, appreciate diverse artworks, and engage in meaningful conversations, making memories and fostering deeper bonds in a creative and inspiring atmosphere.','HUB Lobby','2024-03-05','12:00','15:00',5,'Wellness Society',2,'Society');
INSERT INTO Event VALUES(4,'CV Workshop','The CV workshop is a valuable resource for individuals seeking to enhance their job prospects and professional profiles. Expert facilitators guide participants through the intricacies of resume writing, offering insights on structuring CVs, highlighting key achievements and skills, and tailoring content to specific job roles and industries. By providing practical tips, personalized feedback, and industry best practices, this workshop empowers attendees to create compelling CVs that stand out to potential employers and maximize their career opportunities.','MGT Auditorium','2024-02-23','15:00','16:00',9,'CV Workshop',3,'Workshop');
CREATE TABLE IF NOT EXISTS "Comment" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "eventId" INTEGER NOT NULL,
    CONSTRAINT "Comment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Comment_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES "Event" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO Comment VALUES(1,3,'Fun and therapeutic experience at Clay play!',1);
INSERT INTO Comment VALUES(2,4,'The Clay play workshop was so calming and enjoyable. Creating with clay was therapeutic, and the atmosphere was welcoming.',1);
INSERT INTO Comment VALUES(3,5,'Attending Clay play was a highlight of my week. It was great meeting fellow art lovers and seeing everyone''s unique creations take shape.',1);
INSERT INTO Comment VALUES(4,8,'Participating in the FIFA competition was thrilling. The competitive spirit was palpable, and I enjoyed every match.',2);
INSERT INTO Comment VALUES(5,7,'Despite the tough competition at the FIFA event, I had a blast. It was awesome to connect with fellow gamers who share the same passion for virtual football.',2);
INSERT INTO Comment VALUES(6,6,'Insightful CV workshop, gained valuable tips!',4);
INSERT INTO Comment VALUES(7,9,'Highly recommend the CV workshop to anyone job hunting. It''s practical, interactive, and helps you tailor your resume effectively.',4);
INSERT INTO Comment VALUES(8,11,'Attending the CV workshop was a game-changer. The facilitators were knowledgeable, and I left with a revamped resume and newfound confidence.',4);
INSERT INTO Comment VALUES(9,10,'Relaxing and inspiring art date!',3);
INSERT INTO Comment VALUES(10,12,'Attending the art date was a memorable experience. It was a perfect blend of relaxation and inspiration, leaving me creatively rejuvenated.',3);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('User',12);
INSERT INTO sqlite_sequence VALUES('EventUser',25);
INSERT INTO sqlite_sequence VALUES('Category',3);
INSERT INTO sqlite_sequence VALUES('SubCategory',12);
INSERT INTO sqlite_sequence VALUES('Event',7);
INSERT INTO sqlite_sequence VALUES('Comment',12);
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
COMMIT;
