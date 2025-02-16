CREATE TABLE IF NOT EXISTS public.actor_films
(
    actor text COLLATE pg_catalog."default",
    actorid text COLLATE pg_catalog."default" NOT NULL,
    film text COLLATE pg_catalog."default",
    year integer,
    votes integer,
    rating real,
    filmid text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT actor_films_pkey PRIMARY KEY (actorid, filmid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.actor_films
    OWNER to postgres;