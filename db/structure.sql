CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "price" float, "name" varchar, "real" boolean, "weight" float, "description" varchar, "created_at" datetime NOT NULL, "updated_at" datetimrails g uploader Avatare NOT NULL, "votes_count" integer DEFAULT 0, "image" varchar);
CREATE INDEX "index_items_on_price" ON "items" ("price");
CREATE INDEX "index_items_on_name" ON "items" ("name");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "login" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "email" varchar, "name" varchar, "avatar" varchar);
CREATE TABLE "carts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "positions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "cart_id" integer, "item_id" integer, "quantity" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "user_id" integer, "commentable_id" integer, "commentable_type" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "blog_posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES
('20170220110952'),
('20170221123221'),
('20170221142051'),
('20170221142110'),
('20170222070837'),
('20170222075326'),
('20170222115625'),
('20170222124610'),
('20170222124945'),
('20170228140834'),
('20170301120316'),
('20170301122926');


