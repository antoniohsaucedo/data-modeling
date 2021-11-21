CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    passwords VARCHAR(255),
      last_name VARCHAR(50),
        first_name VARCHAR(60)
);

CREATE TABLE recipes (
id SERIAL PRIMARY KEY,
recipe_name VARCHAR (50),
recipe_status BOOLEAN,
recipe_ingredients VARCHAR(50)
);

CREATE TABLE occasions (
occasion_id SERIAL PRIMARY KEY,
occasion_name VARCHAR (255),
recipes_name VARCHAR (255),
user_id INTEGER references users(id),
plate INTEGER references recipes(id)
);

CREATE TABLE ingredients (
id SERIAL PRIMARY KEY,
ingredients_name INTEGER references users(id),
user_id INTEGER references users(id)
);

CREATE TABLE grocery_list (
id SERIAL PRIMARY KEY,
grocery_item_name VARCHAR(50),
recipe_ingredients INTEGER references ingredients(id)
);


CREATE TABLE instruction_list (
id SERIAL PRIMARY KEY,
instruction_name VARCHAR(50),
instruction_id INTEGER references ingredients(id)
);