-- Table: public.carpool_users

-- DROP TABLE public.carpool_users;

CREATE TABLE public.carpool_users
(
    id bigint NOT NULL DEFAULT nextval('carpool_users_id_seq'::regclass),
    carpool_id bigint NOT NULL DEFAULT nextval('carpool_users_carpool_id_seq'::regclass),
    user_id bigint NOT NULL DEFAULT nextval('carpool_users_user_id_seq'::regclass),
    is_driver boolean NOT NULL,
    CONSTRAINT carpool_users_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.carpool_users
    OWNER to postgres;

-- Index: fki_carpool_users_carpool_id

-- DROP INDEX public.fki_carpool_users_carpool_id;

CREATE INDEX fki_carpool_users_carpool_id
    ON public.carpool_users USING btree
    (carpool_id)
    TABLESPACE pg_default;

-- Index: fki_carpool_users_user_id

-- DROP INDEX public.fki_carpool_users_user_id;

CREATE INDEX fki_carpool_users_user_id
    ON public.carpool_users USING btree
    (user_id)
    TABLESPACE pg_default;
