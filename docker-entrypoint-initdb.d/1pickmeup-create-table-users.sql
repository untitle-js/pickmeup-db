-- Table: public.users

-- DROP TABLE public.users;

CREATE TABLE public.users
(
    user_id numeric NOT NULL,
    user_password character varying(25) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(25) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(25) COLLATE pg_catalog."default" NOT NULL,
    date_of_birth date NOT NULL,
    phone_number character varying(15) COLLATE pg_catalog."default" NOT NULL,
    email character(150) COLLATE pg_catalog."default" NOT NULL,
    address character(500) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (user_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.users
    OWNER to postgres;
