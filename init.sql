CREATE SEQUENCE users_seq;

CREATE TABLE public.users (
  id bigint PRIMARY KEY unique_id('users_seq') NOT NULL,
  firstname text NOT NULL,
  lastname text NOT NULL,
  email text NOT NULL,
  password text NOT NULL,
  description text,
  role text NOT NULL
);

INSERT INTO users(id, firstname, lastname, email, password, description, role)
VALUES(
  SELECT unique_id('users_seq'),
  'Ksenia',
  'Bobtsova',
  'ksenia.b@dashbouquet.com',
  'qwerty',
  'Default user',
  'admin'
);
