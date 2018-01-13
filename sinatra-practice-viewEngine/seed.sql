DROP TABLE IF EXISTS cars;

CREATE TABLE cars (

  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  year VARCHAR(255),
  url VARCHAR(255)

);

INSERT INTO cars (name , year, url) VALUES ('Aston Martin', '2014', 'https://www.driving.co.uk/s3/st-driving-prod/uploads/2016/12/db11-08.jpg');
INSERT INTO cars (name , year, url) VALUES ('Ferrari' , '2015', 'https://buyersguide.caranddriver.com/media/assets/submodel/8119.jpg');
INSERT INTO cars (name, year, url) VALUES ('McLaren' , '2009', 'https://cdn.shopify.com/s/files/1/1429/2252/products/135-75110-01.jpg?v=1484296870');
