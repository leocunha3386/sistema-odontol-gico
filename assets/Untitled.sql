CREATE TABLE "user_deteils" (
  "id" integer PRIMARY KEY,
  "user_id" integer,
  "fumante" bool,
  "created_at" timestamp
);

CREATE TABLE "user_procediments" (
  "id" integer PRIMARY KEY,
  "user_id" integer
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "role" varchar,
  "created_at" timestamp
);

CREATE TABLE "agendamento" (
  "id" integer PRIMARY KEY,
  "user_id" integer
);

ALTER TABLE "user_procediments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "agendamento" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_deteils" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
