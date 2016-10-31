CREATE TABLE IF NOT EXISTS cars (
   car_id   NUMERIC NOT NULL,
   user_id NUMERIC NOT NULL REFERENCES users (user_id),
   make VARCHAR(100),
   occupancy NUMERIC NOT NULL,   
   CONSTRAINT cars_pk PRIMARY KEY (car_id)
);
