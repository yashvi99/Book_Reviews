BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" (
	"version"	varchar NOT NULL,
	PRIMARY KEY("version")
);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" (
	"key"	varchar NOT NULL,
	"value"	varchar,
	"created_at"	datetime(6) NOT NULL,
	"updated_at"	datetime(6) NOT NULL,
	PRIMARY KEY("key")
);
CREATE TABLE IF NOT EXISTS "books" (
	"id"	integer NOT NULL,
	"name"	varchar,
	"author"	varchar,
	"created_at"	datetime(6) NOT NULL,
	"updated_at"	datetime(6) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "reviewers" (
	"id"	integer NOT NULL,
	"name"	varchar,
	"password_digest"	varchar,
	"created_at"	datetime(6) NOT NULL,
	"updated_at"	datetime(6) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "books_reviewers" (
	"reviewer_id"	integer NOT NULL,
	"book_id"	integer NOT NULL
);
CREATE TABLE IF NOT EXISTS "notes" (
	"id"	integer NOT NULL,
	"title"	varchar,
	"note"	text,
	"book_id"	integer NOT NULL,
	"created_at"	datetime(6) NOT NULL,
	"updated_at"	datetime(6) NOT NULL,
	CONSTRAINT "fk_rails_317dc639a3" FOREIGN KEY("book_id") REFERENCES "books"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "schema_migrations" VALUES ('20200521193223');
INSERT INTO "schema_migrations" VALUES ('20200521193332');
INSERT INTO "schema_migrations" VALUES ('20200521193513');
INSERT INTO "schema_migrations" VALUES ('20200521193829');
INSERT INTO "schema_migrations" VALUES ('20200521194509');
INSERT INTO "schema_migrations" VALUES ('20200521194838');
INSERT INTO "ar_internal_metadata" VALUES ('environment','development','2020-05-21 19:38:58.077449','2020-05-21 19:38:58.077449');
INSERT INTO "books" VALUES (1,'The Little Prince','Antoine de Saint-Exupéry','2020-05-21 19:40:50.668713','2020-05-21 19:40:50.668713');
INSERT INTO "books" VALUES (2,'The Lord of the Rings','J. R. R. Tolkien','2020-05-21 19:40:50.679589','2020-05-21 19:40:50.679589');
INSERT INTO "books" VALUES (3,'The Alchemist ','Paulo Coelho','2020-05-21 19:40:50.687472','2020-05-21 19:40:50.687472');
INSERT INTO "books" VALUES (4,'The Master and Margarita','Mikhail Bulgakov','2020-05-21 19:40:50.694022','2020-05-21 19:40:50.694022');
INSERT INTO "books" VALUES (5,'Alice''s Adventures in Wonderland','Lewis Carroll','2020-05-21 19:40:50.701052','2020-05-21 19:40:50.701052');
INSERT INTO "books" VALUES (6,'And Then There Were None','Agatha Christie','2020-05-21 19:40:50.708560','2020-05-21 19:40:50.708560');
INSERT INTO "books" VALUES (7,'Dream of the Red Chamber','Cao Xueqin','2020-05-21 19:40:50.715406','2020-05-21 19:40:50.715406');
INSERT INTO "books" VALUES (8,'The Lion, the Witch and the Wardrobe','C. S. Lewis','2020-05-21 19:40:50.729334','2020-05-21 19:40:50.729334');
INSERT INTO "books" VALUES (9,'The Da Vinci Code','Dan Brown','2020-05-21 19:40:50.742719','2020-05-21 19:40:50.742719');
INSERT INTO "books" VALUES (10,'The Eagle Has Landed','Jack Higgins','2020-05-21 19:40:50.754145','2020-05-21 19:40:50.754145');
INSERT INTO "books" VALUES (17,'Three Mistakes of my life','Chetan Bhagat','2020-05-22 21:51:33.589251','2020-05-22 21:51:33.589251');
INSERT INTO "books" VALUES (18,'Origin','Dan Brown','2020-05-23 16:55:32.171460','2020-05-23 16:55:32.171460');
INSERT INTO "reviewers" VALUES (11,'Ansh Mehta','$2a$12$24A7FbAJ15obnmM3.7kv8uL1SuVxK8n2/7devahhwrmo2.I5vfF8S','2020-05-22 19:32:33.975571','2020-05-22 19:32:33.975571');
INSERT INTO "reviewers" VALUES (12,'Kunj Patel','$2a$12$BMw6ojU/zJOtN5MsTG7aqupaRBHNXiYBHLaIsU.nFg0u4dKjeakWa','2020-05-22 19:35:11.174692','2020-05-22 19:35:11.174692');
INSERT INTO "reviewers" VALUES (13,'Nilay Patel','$2a$12$3yb1cRBNUy.sy6/3eKnlxeEDXbEg3DTc0A8SbvMDT8MpWnkytkQMu','2020-05-22 19:35:31.695403','2020-05-22 19:35:31.695403');
INSERT INTO "reviewers" VALUES (14,'Himadree Panchal','$2a$12$7TFZTXA.9ga8Ckvxvfy3yer2zbU09VYwL2O5c0q3jjXCHOrllWbne','2020-05-22 19:37:08.834852','2020-05-22 19:37:08.834852');
INSERT INTO "reviewers" VALUES (15,'Dhara Patel','$2a$12$n4ZO5R1ri06nszwH5M0UReul0rFADAUvqSzR9B72.IvfmzbJYEi2u','2020-05-22 19:37:30.605808','2020-05-22 19:37:30.605808');
INSERT INTO "reviewers" VALUES (16,'Dhairya Shah','$2a$12$spgLp2FPnVQbPrsdZVej3.ZfdGuh/OYeJ8rdR.ug/x4Lo/4RGha1W','2020-05-22 19:37:49.848068','2020-05-22 19:37:49.848068');
INSERT INTO "books_reviewers" VALUES (11,1);
INSERT INTO "books_reviewers" VALUES (12,1);
INSERT INTO "books_reviewers" VALUES (13,1);
INSERT INTO "books_reviewers" VALUES (14,2);
INSERT INTO "books_reviewers" VALUES (15,2);
INSERT INTO "books_reviewers" VALUES (16,2);
INSERT INTO "books_reviewers" VALUES (11,3);
INSERT INTO "books_reviewers" VALUES (13,3);
INSERT INTO "books_reviewers" VALUES (16,3);
INSERT INTO "books_reviewers" VALUES (12,4);
INSERT INTO "books_reviewers" VALUES (14,4);
INSERT INTO "books_reviewers" VALUES (15,4);
INSERT INTO "books_reviewers" VALUES (11,5);
INSERT INTO "books_reviewers" VALUES (13,5);
INSERT INTO "books_reviewers" VALUES (14,5);
INSERT INTO "books_reviewers" VALUES (15,6);
INSERT INTO "books_reviewers" VALUES (12,6);
INSERT INTO "books_reviewers" VALUES (16,6);
INSERT INTO "books_reviewers" VALUES (15,7);
INSERT INTO "books_reviewers" VALUES (13,7);
INSERT INTO "books_reviewers" VALUES (11,7);
INSERT INTO "books_reviewers" VALUES (16,8);
INSERT INTO "books_reviewers" VALUES (12,8);
INSERT INTO "books_reviewers" VALUES (14,8);
INSERT INTO "books_reviewers" VALUES (14,9);
INSERT INTO "books_reviewers" VALUES (12,9);
INSERT INTO "books_reviewers" VALUES (11,9);
INSERT INTO "books_reviewers" VALUES (16,10);
INSERT INTO "books_reviewers" VALUES (13,10);
INSERT INTO "books_reviewers" VALUES (15,10);
INSERT INTO "books_reviewers" VALUES (11,17);
INSERT INTO "books_reviewers" VALUES (12,18);
INSERT INTO "notes" VALUES (1,'WOWWWW!!','What an amazing book. Totally worth the time.',7,'2020-05-21 20:33:40.948907','2020-05-21 20:33:40.948907');
INSERT INTO "notes" VALUES (2,'Not Bad :)','It is a good read. But there is nothing extraordinary about htis book.',7,'2020-05-21 20:33:40.961225','2020-05-21 20:33:40.961225');
INSERT INTO "notes" VALUES (3,'Best Book Eva !!!!','I love Dan Brown and all his books.',9,'2020-05-22 09:49:50.787823','2020-05-22 09:49:50.787823');
INSERT INTO "notes" VALUES (4,'Fascinated ','Being a fan of these types of books, I totally loved this books',2,'2020-05-22 09:52:50.343334','2020-05-22 09:52:50.343334');
INSERT INTO "notes" VALUES (5,'Masterpiece','In love with these book and the writer. ',6,'2020-05-22 10:11:04.747332','2020-05-22 10:11:04.747332');
INSERT INTO "notes" VALUES (6,'Not up to the mark','I am a big fan of Dan Brown and have read all his books. This one was worst so far.',9,'2020-05-22 10:16:58.349198','2020-05-22 10:16:58.349198');
INSERT INTO "notes" VALUES (7,'Good but not great','I would not say it is a bad book but just not as good as expected.',9,'2020-05-22 17:41:49.542559','2020-05-22 17:41:49.542559');
INSERT INTO "notes" VALUES (8,'Disappointed','Waste of Time :(',9,'2020-05-22 17:50:45.776724','2020-05-22 17:50:45.776724');
INSERT INTO "notes" VALUES (9,'Mind Blowing','Totally loved the character and Langdon is superstar.',9,'2020-05-22 17:51:39.969833','2020-05-22 17:51:39.969833');
INSERT INTO "notes" VALUES (10,'Totally worth it','just Wow!',9,'2020-05-22 17:52:11.966420','2020-05-22 17:52:11.966420');
INSERT INTO "notes" VALUES (11,'Dan Brown is best','Dan Brown is GOAT. Period',9,'2020-05-22 18:19:30.732825','2020-05-22 18:19:30.732825');
INSERT INTO "notes" VALUES (12,'Great Book','It is a book about friendship. Amazing!',17,'2020-05-22 21:52:33.561376','2020-05-22 21:52:33.561376');
CREATE INDEX IF NOT EXISTS "index_notes_on_book_id" ON "notes" (
	"book_id"
);
COMMIT;
