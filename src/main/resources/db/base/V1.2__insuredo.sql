CREATE TABLE if not exists takaful (
  takaful_id  SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  is_islamic BOOLEAN NOT NULL);
  
CREATE TABLE if not exists product (
  product_id SERIAL PRIMARY KEY,
  company_id INT NOT NULL,
  product_name TEXT NOT NULL,
  amount_net INT NULL,
  amount_tax INT NULL,
  valid_from INT NULL,
  valid_to INT NULL);
  
CREATE TABLE if not exists brand (
  brand_id SERIAL PRIMARY KEY,
  brand_name TEXT NOT NULL);
  
CREATE TABLE product_brand (
  product_id INT NOT NULL,
  brand_id INT NOT NULL,
  PRIMARY KEY(product_id, brand_id));
  
INSERT INTO takaful (name, is_islamic) VALUES ('Company A', TRUE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company B', TRUE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company C', FALSE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company D', TRUE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company E', FALSE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company F', FALSE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company G', FALSE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company H', TRUE);
INSERT INTO takaful (name, is_islamic) VALUES ('Company I', TRUE);


INSERT INTO brand (brand_name) VALUES ('Hyundai');
INSERT INTO brand (brand_name) VALUES ('Opel');
INSERT INTO brand (brand_name) VALUES ('Toyota');
INSERT INTO brand (brand_name) VALUES ('Nissan');
INSERT INTO brand (brand_name) VALUES ('Fiat');
INSERT INTO brand (brand_name) VALUES ('BMW');
INSERT INTO brand (brand_name) VALUES ('Mercedes');
INSERT INTO brand (brand_name) VALUES ('Honda');
INSERT INTO brand (brand_name) VALUES ('Peagut');
INSERT INTO brand (brand_name) VALUES ('KIA');
INSERT INTO brand (brand_name) VALUES ('Mitsubishi Nissan');

INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('1', 'Car Insurance', '500', '10', '2010', '2021');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('2', 'Car Insurance', '400', '10', '2005', '2016');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('3', 'Car Insurance', '600', '10', '2007', '2021');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('4', 'Car Insurance', '520', '10', '2000', '2018');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('5', 'Car Insurance', '442', '10', '1999', '2021');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('6', 'Car Insurance', '610', '10', '2002', '2019');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('7', 'Car Insurance', '520', '10', '2003', '2018');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('8', 'Car Insurance', '442', '10', '2005', '2021');
INSERT INTO product (company_id, product_name, amount_net, amount_tax, valid_from, valid_to) VALUES ('9', 'Car Insurance', '500', '10', '2004', '2019');



INSERT INTO product_brand (product_id, brand_id) VALUES ('1', '1');
INSERT INTO product_brand (product_id, brand_id) VALUES ('1', '2');
INSERT INTO product_brand (product_id, brand_id) VALUES ('1', '3');
INSERT INTO product_brand (product_id, brand_id) VALUES ('1', '4');
INSERT INTO product_brand (product_id, brand_id) VALUES ('1', '5');
INSERT INTO product_brand (product_id, brand_id) VALUES ('2', '6');
INSERT INTO product_brand (product_id, brand_id) VALUES ('2', '7');
INSERT INTO product_brand (product_id, brand_id) VALUES ('2', '2');
INSERT INTO product_brand (product_id, brand_id) VALUES ('2', '4');
INSERT INTO product_brand (product_id, brand_id) VALUES ('3', '8');
INSERT INTO product_brand (product_id, brand_id) VALUES ('3', '9');
INSERT INTO product_brand (product_id, brand_id) VALUES ('3', '2');
INSERT INTO product_brand (product_id, brand_id) VALUES ('3', '3');
INSERT INTO product_brand (product_id, brand_id) VALUES ('4', '6');
INSERT INTO product_brand (product_id, brand_id) VALUES ('4', '3');
INSERT INTO product_brand (product_id, brand_id) VALUES ('4', '4');
INSERT INTO product_brand (product_id, brand_id) VALUES ('4', '5');
INSERT INTO product_brand (product_id, brand_id) VALUES ('4', '10');
INSERT INTO product_brand (product_id, brand_id) VALUES ('4', '9');
INSERT INTO product_brand (product_id, brand_id) VALUES ('5', '7');
INSERT INTO product_brand (product_id, brand_id) VALUES ('5', '2');
INSERT INTO product_brand (product_id, brand_id) VALUES ('5', '3');
INSERT INTO product_brand (product_id, brand_id) VALUES ('5', '5');
INSERT INTO product_brand (product_id, brand_id) VALUES ('5', '10');
INSERT INTO product_brand (product_id, brand_id) VALUES ('6', '6');
INSERT INTO product_brand (product_id, brand_id) VALUES ('6', '7');
INSERT INTO product_brand (product_id, brand_id) VALUES ('6', '4');
INSERT INTO product_brand (product_id, brand_id) VALUES ('6', '5');
INSERT INTO product_brand (product_id, brand_id) VALUES ('6', '10');
INSERT INTO product_brand (product_id, brand_id) VALUES ('7', '6');
INSERT INTO product_brand (product_id, brand_id) VALUES ('7', '11');
INSERT INTO product_brand (product_id, brand_id) VALUES ('7', '5');
INSERT INTO product_brand (product_id, brand_id) VALUES ('7', '10');
INSERT INTO product_brand (product_id, brand_id) VALUES ('7', '8');
INSERT INTO product_brand (product_id, brand_id) VALUES ('8', '7');
INSERT INTO product_brand (product_id, brand_id) VALUES ('8', '2');
INSERT INTO product_brand (product_id, brand_id) VALUES ('8', '3');
INSERT INTO product_brand (product_id, brand_id) VALUES ('8', '5');
INSERT INTO product_brand (product_id, brand_id) VALUES ('8', '10');
INSERT INTO product_brand (product_id, brand_id) VALUES ('9', '1');
INSERT INTO product_brand (product_id, brand_id) VALUES ('9', '2');
INSERT INTO product_brand (product_id, brand_id) VALUES ('9', '3');
INSERT INTO product_brand (product_id, brand_id) VALUES ('9', '4');
INSERT INTO product_brand (product_id, brand_id) VALUES ('9', '5');