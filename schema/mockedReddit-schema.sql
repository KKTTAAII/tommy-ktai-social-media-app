-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- user deafult pic credit <a target="_blank" href="https://icons8.com/icon/98957/user">User icon by Icons8</a>

CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (15) NOT NULL,
    "email" TEXT   NOT NULL,
    "password" TEXT   NOT NULL,
    "profile_picture" TEXT NOT NULL DEFAULT 'https://img.icons8.com/ios-glyphs/90/000000/user--v1.png',
    "profile" TEXT   NULL,
    "joined_date" DATE   NULL
);

CREATE TABLE "post_categories" (
    "id" SERIAL PRIMARY KEY,
    "category" TEXT   NOT NULL
);

CREATE TABLE "messages" (
    "id" SERIAL PRIMARY KEY,
    "post_category_id" INTEGER REFERENCES post_categories ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES users ON DELETE CASCADE,
    "text" VARCHAR (500) NOT NULL,
    "time_stamp" TIMESTAMP  NOT NULL
);

CREATE TABLE "message_comments" (
    "id" SERIAL PRIMARY KEY,
    "message_id" INTEGER NOT NULL REFERENCES messages ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES users ON DELETE CASCADE,
    "text" TEXT   NOT NULL,
    "time_stampt" TIMESTAMP   NOT NULL
);

CREATE TABLE "likes" (
    "id" SERIAL PRIMARY KEY,
    "user_id" INTEGER NOT NULL REFERENCES users ON DELETE CASCADE,
    "message_id" INTEGER NOT NULL REFERENCES messages ON DELETE CASCADE
);

CREATE TABLE "follows" (
    "id" SERIAL PRIMARY KEY,
    "user_being_followed_id" INTEGER NOT NULL REFERENCES users ON DELETE CASCADE,
    "user_following_id" INTEGER NOT NULL REFERENCES users ON DELETE CASCADE
);




