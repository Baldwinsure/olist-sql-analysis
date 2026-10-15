-- Table: public.olist_geolocation

-- DROP TABLE IF EXISTS public.olist_geolocation;

CREATE TABLE IF NOT EXISTS public.olist_geolocation
(
    geolocation_zip_code_prefix character varying(5) COLLATE pg_catalog."default" NOT NULL,
    geolocation_lat numeric(18,15) NOT NULL,
    geolocation_lng numeric(18,15) NOT NULL,
    geolocation_city character varying(100) COLLATE pg_catalog."default" NOT NULL,
    geolocation_state character(2) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_geolocation
    OWNER to postgres;