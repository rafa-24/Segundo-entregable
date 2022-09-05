CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "e_mail" varchar NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "cart" (
  "id" serial PRIMARY KEY,
  "id_user" int NOT NULL,
  "total_price" money NOT NULL
);

CREATE TABLE "products" (
  "id" serial PRIMARY KEY,
  "id_order" int NOT NULL,
  "id_cart" int NOT NULL,
  "id_categorie" int NOT NULL,
  "name" varchar NOT NULL,
  "description" text NOT NULL,
  "price" money NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "orders" (
  "id" serial PRIMARY KEY,
  "id_user" [pk],
  "created_at" timestamp DEFAULT 'now()',
  "total_price" money NOT NULL
);

CREATE TABLE "cart_products" (
  "id" serial PRIMARY KEY,
  "id_cart" int NOT NULL,
  "id_product" int NOT NULL,
  "quantity" int NOT NULL
);

ALTER TABLE "cart" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "products" ADD FOREIGN KEY ("id_categorie") REFERENCES "categories" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "products" ADD FOREIGN KEY ("id_order") REFERENCES "orders" ("id");

ALTER TABLE "cart_products" ADD FOREIGN KEY ("id_cart") REFERENCES "cart" ("id");

ALTER TABLE "cart_products" ADD FOREIGN KEY ("id_product") REFERENCES "products" ("id");