DROP TABLE IF EXISTS posts;

CREATE TABLE posts (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

INSERT INTO posts (title , body) VALUES ('Post 1' , 'Body text 1');
INSERT INTO posts (title , body) VALUES ('Post 2' , 'Body text 2');
INSERT INTO posts (title , body) VALUES ('Post 3' , 'Body text 3');
INSERT INTO posts (title , body) VALUES ('Post 4' , 'Body text 4');