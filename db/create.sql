--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  model_id INTEGER,
  brand_id NUMERIC(10, 2)INTEGER
);

DROP TABLE IF EXISTS colour; 
CREATE TABLE colour (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS products_colour; 
CREATE TABLE products_colour (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  colour_id VARCHAR(255),
  producten_id VARCHAR(255)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Nette schoenen', 'Dit is een exclusief paar schoenen gedragen door Hugo de Jonge, deze schoen is gepersonaliseerd en er is 
maar 1 exemplaar van. Hugo is overigens niet inbegrepen bij dit product.', '816905633-0', 999);

insert into products (name, description, code, price) values ('Klompen', 'Puur oudhollandse klompen gemaakt van hout', '077030122-3', 11);

insert into products (name, description, code, price) values ('Cars crocs', 'Dit zijn exclusieve Cars crocs. Met deze crocs ren je twee keer zo snel. ktjauw!.', '445924201-X', 13.5);


insert into products (name, description, code, price) values ('Jordan 1 High J-Balvin', 'Dit zijn de welbekende Jordan 1s, deze schoenen zijn ontworpen door de bekende zanger J-Balvin. Er zijn hier maar 4 exemplaren van.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Gouden schoenen', 'Nu al een klassieker, gedragen door de bekende worstelaar John Cena', '686928463-6', 14);
insert into products (name, description, code, price) values ('Zeeman schoenen', 'Dit zijn exclusieve schoenen van de Zeeman. Met deze schoenen ga je in zee man', '492662523-7', 14);

insert into products (name, description, code, price) values ('Balenciaga schoen', 'Deze schoen is speciaal voor mensen die iets tegen sokken hebben.', '492662524-7', 645);

insert into products (name, description, code, price) values ('Coc(clash of clans) schoenen', 'Met deze schoen ben je de bom. Net als die ene die uit de ballon valt.', '492662525-7', 14);

