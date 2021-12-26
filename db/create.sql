--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  model_id INTEGER,
  brand_id INTEGER
);

DROP TABLE IF EXISTS brand; 
CREATE TABLE brand (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS model; 
CREATE TABLE model (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS colour; 
CREATE TABLE colour (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS product_colour; 
CREATE TABLE product_colour (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  colour_id INTEGER
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, brand_id, model_id) values ('de Hugos', 'Dit is een exclusief paar schoenen gedragen door Hugo de Jonge, deze schoen is gepersonaliseerd en er is maar 1 exemplaar van. Hugo is overigens niet inbegrepen bij dit product.', '077030122-1', 999.95, 1, 1);
insert into products (name, description, code, price, brand_id, model_id) values ('Klompen', 'Puur oudhollandse klompen gemaakt van hout', '077030122-3', 20, 7, 4);
insert into products (name, description, code, price, brand_id, model_id) values ('Cars crocs', 'Dit zijn exclusieve Cars crocs. Met deze crocs ren je twee keer zo snel. ktjauw!.', '445924201-X', 5, 3, 3);
insert into products (name, description, code, price, brand_id, model_id) values ('Jordan 1 High J-Balvin', 'Dit zijn de welbekende Jordan 1s, deze schoenen zijn ontworpen door de bekende zanger J-Balvin. Er zijn hier maar 4 exemplaren van.', '693155505-7', 700, 5, 2);
insert into products (name, description, code, price, brand_id, model_id) values ('you cant see me', 'Nu al een klassieker, gedragen door de bekende worstelaar John Cena', '686928463-6', 799.50, 1, 1);
insert into products (name, description, code, price, brand_id, model_id) values ('Zeeman schoenen', 'Dit zijn exclusieve schoenen van de Zeeman. Met deze schoenen ga je in zee man', '492662523-7', 199.50, 6, 1);
insert into products (name, description, code, price, brand_id, model_id) values ('Balenciaga schoen', 'Deze schoen is speciaal voor mensen die iets tegen sokken hebben.', '492662524-7', 645, 2, 1);
insert into products (name, description, code, price, brand_id, model_id) values ('Coc(clash of clans) schoenen', 'Met deze schoen ben je de bom. Net als die ene die uit de ballon valt.', '492662525-7', 9.95, 4, 1);

insert into brand (name) values ('Pier One');
insert into brand (name) values ('Balenciaga');
insert into brand (name) values ('Crocs');
insert into brand (name) values ('SUPERCELL');
insert into brand (name) values ('Nike');
insert into brand (name) values ('Zeeman');
insert into brand (name) values ('Meloen');

insert into model (name) values ('nette schoen');
insert into model (name) values ('alledaags');
insert into model (name) values ('sportschoen');
insert into model (name) values ('houtwerk');


/* n:m relatie tussen kleuren en de schoenen */


insert into colour (name) values ('zwart');
insert into colour (name) values ('rood');
insert into colour (name) values ('blauw');
insert into colour (name) values ('geel');
insert into colour (name) values ('wit');
insert into colour (name) values ('goud');
insert into colour (name) values ('meerderkleurig');

insert into product_colour (products_id, colour_id) values (1, 5);
insert into product_colour (products_id, colour_id) values (1, 7);
insert into product_colour (products_id, colour_id) values (2, 4);
insert into product_colour (products_id, colour_id) values (3, 2);
insert into product_colour (products_id, colour_id) values (4, 7);
insert into product_colour (products_id, colour_id) values (5, 6);
insert into product_colour (products_id, colour_id) values (6, 1);
insert into product_colour (products_id, colour_id) values (6, 3);
insert into product_colour (products_id, colour_id) values (6, 4);
insert into product_colour (products_id, colour_id) values (6, 1);
insert into product_colour (products_id, colour_id) values (7, 4);
insert into product_colour (products_id, colour_id) values (7, 5);