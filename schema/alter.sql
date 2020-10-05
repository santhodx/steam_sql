ALTER TABLE "platform" ADD FOREIGN KEY ("platform_id") REFERENCES "game" ("platforms_id");

ALTER TABLE "category" ADD FOREIGN KEY ("category_id") REFERENCES "game" ("categories");

ALTER TABLE "steamspyTags" ADD FOREIGN KEY ("steamspy_tags_id") REFERENCES "game" ("steamspy_tags_id");

ALTER TABLE "stats" ADD FOREIGN KEY ("steam_appid") REFERENCES "game" ("appid");

ALTER TABLE "description" ADD FOREIGN KEY ("steam_appid") REFERENCES "game" ("appid");

ALTER TABLE "media" ADD FOREIGN KEY ("steam_appid") REFERENCES "game" ("appid");

ALTER TABLE "requirements" ADD FOREIGN KEY ("steam_appid") REFERENCES "game" ("appid");

ALTER TABLE "support" ADD FOREIGN KEY ("steam_appid") REFERENCES "game" ("appid");

ALTER TABLE "steamspyTags" ADD FOREIGN KEY ("tag_id") REFERENCES "tags" ("tag_id");
