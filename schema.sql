-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "User" (
    "id" int   NOT NULL,
    "username" string   NOT NULL,
    "password" string   NOT NULL,
    "profile_picture" string   NOT NULL,
    "profile" string   NULL,
    "joined__cate" string   NULL,
    CONSTRAINT "pk_User" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Message" (
    "id" int   NOT NULL,
    "post_category_id" int   NOT NULL,
    "user_id" int   NOT NULL,
    "text" string   NOT NULL,
    "time_stamp" string   NOT NULL,
    CONSTRAINT "pk_Message" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "MessageComment" (
    "id" int   NOT NULL,
    "message_id" int   NOT NULL,
    "user_id" int   NOT NULL,
    "text" string   NOT NULL,
    "time_stampt" string   NOT NULL,
    CONSTRAINT "pk_MessageComment" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Like" (
    "id" string   NOT NULL,
    "user_id" int   NOT NULL,
    "message_id" int   NOT NULL
);

CREATE TABLE "Follow" (
    "user_being_followed_id" int   NOT NULL,
    "user_following_id" int   NOT NULL
);

CREATE TABLE "PostCatagory" (
    "id" int   NOT NULL,
    "category" string   NOT NULL,
    CONSTRAINT "pk_PostCatagory" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Message" ADD CONSTRAINT "fk_Message_post_category_id" FOREIGN KEY("post_category_id")
REFERENCES "PostCatagory" ("id");

ALTER TABLE "Message" ADD CONSTRAINT "fk_Message_user_id" FOREIGN KEY("user_id")
REFERENCES "User" ("id");

ALTER TABLE "MessageComment" ADD CONSTRAINT "fk_MessageComment_message_id" FOREIGN KEY("message_id")
REFERENCES "Message" ("id");

ALTER TABLE "MessageComment" ADD CONSTRAINT "fk_MessageComment_user_id" FOREIGN KEY("user_id")
REFERENCES "User" ("id");

ALTER TABLE "Like" ADD CONSTRAINT "fk_Like_user_id" FOREIGN KEY("user_id")
REFERENCES "User" ("id");

ALTER TABLE "Like" ADD CONSTRAINT "fk_Like_message_id" FOREIGN KEY("message_id")
REFERENCES "Message" ("id");

ALTER TABLE "Follow" ADD CONSTRAINT "fk_Follow_user_being_followed_id" FOREIGN KEY("user_being_followed_id")
REFERENCES "User" ("id");

ALTER TABLE "Follow" ADD CONSTRAINT "fk_Follow_user_following_id" FOREIGN KEY("user_following_id")
REFERENCES "User" ("id");

