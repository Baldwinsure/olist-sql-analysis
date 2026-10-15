-- Table: public.olist_products

-- DROP TABLE IF EXISTS public.olist_products;

CREATE TABLE IF NOT EXISTS public.olist_products
(
    product_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    product_category_name character varying(50) COLLATE pg_catalog."default",
    product_name_lenght integer,
    product_description_lenght integer,
    product_photos_qty integer,
    product_weight_g integer,
    product_length_cm integer,
    product_height_cm integer,
    product_width_cm integer,
    CONSTRAINT olist_products_pkey PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_products
    OWNER to postgres;