-- Table: public.cars

-- DROP TABLE public.cars;

CREATE TABLE public.cars
(
    user_id integer NOT NULL,
    car_id integer NOT NULL,
    make character varying(255) COLLATE pg_catalog."default",
    color character varying(255) COLLATE pg_catalog."default",
    model character varying(255) COLLATE pg_catalog."default",
    occupancy integer,
    CONSTRAINT cars_pkey PRIMARY KEY (user_id, car_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.cars
    OWNER to postgres;
