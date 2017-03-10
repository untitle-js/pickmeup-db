-- Table: public.carpool

-- DROP TABLE public.carpool;

CREATE TABLE public.carpool
(
    id bigint NOT NULL,
    destination character varying(255) COLLATE pg_catalog."default",
    starting_location character varying(255) COLLATE pg_catalog."default",
    starting_time timestamp without time zone,
    user_id integer,
    CONSTRAINT carpool_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.carpool
    OWNER to postgres;
