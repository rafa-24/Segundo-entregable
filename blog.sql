CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "user_name" varchar NOT NULL,
  "e_mail" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "posts" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "post" text NOT NULL,
  "id_user" int NOT NULL
);

CREATE TABLE "comments" (
  "id" serial PRIMARY KEY,
  "comment" text NOT NULL,
  "id_post" int NOT NULL,
  "id_user" int NOT NULL
);

ALTER TABLE "posts" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("id_post") REFERENCES "posts" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");


insert into users 
(
user_name,
e_mail,
"password" 
)
values (
'Junior Pacheco',
'juniorp@gmail.com',
'123456'
),
(
'German Silva',
'german@gmail.com',
'123456'
),
(
'Gabriel Sanchez',
'gabriel@gmail.com',
'123456'
),
(
'Raul Cordoba',
'Raul@gmail.com',
'123456'
),
(
'Junior Pacheco',
'junior@gmail.com',
'123456'
),(
'Luis Valencia',
'Luis@gmail.com',
'123456'
),
(
'Julio Mateus',
'Julio@gmail.com',
'123456'
);


insert into posts (
title,
post,
id_user 
) values(
'Pokedex',
'Aplicacion donde se muestran los pokemons y puedes buscar tu pokemon favorito ',
6
),
('e-comerce',
'Aplicacion donde puees comprar articulos electronicos',
11
),
(
'Rick & Morty',
'aplicacion web de la famosa serie rick and morty dnde podras ver a todos los personajes de la serie a traves de  sus mundos',
8
);

insert into comments(
"comment",
id_post,
id_user
) values (
'le fallo el responsive',
1,
7
),
(
'los productos se repiten',
2,
9
),
(
'Muy buena la paginacion, es dinamica',
3,
11
);