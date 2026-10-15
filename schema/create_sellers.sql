-- Table: public.olist_sellers

-- DROP TABLE IF EXISTS public.olist_sellers;

CREATE TABLE IF NOT EXISTS public.olist_sellers
(
    seller_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    seller_zip_code_prefix character varying(5) COLLATE pg_catalog."default" NOT NULL,
    seller_city character varying(100) COLLATE pg_catalog."default" NOT NULL,
    seller_state character(2) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT olist_sellers_pkey PRIMARY KEY (seller_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_sellers
    OWNER to postgres;