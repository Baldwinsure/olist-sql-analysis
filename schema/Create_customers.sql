-- Table: public.olist_customers

-- DROP TABLE IF EXISTS public.olist_customers;

CREATE TABLE IF NOT EXISTS public.olist_customers
(
    customer_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    customer_unique_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    customer_zip_code_prefix character varying(5) COLLATE pg_catalog."default" NOT NULL,
    customer_city character varying(100) COLLATE pg_catalog."default" NOT NULL,
    customer_state character(2) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT olist_customers_pkey PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_customers
    OWNER to postgres;