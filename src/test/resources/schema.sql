DROP TABLE IF EXISTS takaful;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS brand;
DROP TABLE IF EXISTS product_brand;


CREATE TABLE if not exists takaful (
takaful_id  int(11) NOT NULL AUTO_INCREMENT,
name varchar(45) NOT NULL,
is_islamic bit(1) NOT NULL,
PRIMARY KEY(takaful_id));
  
CREATE TABLE if not exists product (
  product_id int(11) NOT NULL AUTO_INCREMENT,
  company_id int(11) NOT NULL,
  product_name varchar(45) NOT NULL,
  amount_net int(11) NULL,
  amount_tax int(11) NULL,
  valid_from int(11) NULL,
  valid_to int(11) NULL,
  PRIMARY KEY(product_id));
  
CREATE TABLE if not exists brand (
  brand_id int(11) NOT NULL AUTO_INCREMENT,
  brand_name varchar(45) NOT NULL,
  PRIMARY KEY(brand_id));
  
CREATE TABLE product_brand (
  product_id int(11) NOT NULL,
  brand_id int(11) NOT NULL,
  PRIMARY KEY(product_id, brand_id));
  


