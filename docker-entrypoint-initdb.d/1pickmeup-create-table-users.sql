CREATE TABLE IF NOT EXISTS users (
   user_id   NUMERIC       NOT NULL,
   user_password VARCHAR(25) NOT NULL,
   first_name    VARCHAR(25) NOT NULL,
   last_name     VARCHAR(25) NOT NULL,
   date_of_birth DATE NOT NULL,
   phone_number  VARCHAR(15) NOT NULL,
   email          CHAR(150) NOT NULL,
   address          CHAR(500) NOT NULL,
   CONSTRAINT users_pk PRIMARY KEY (user_id)
);
