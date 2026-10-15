-- Table: public.olist_order_items

-- DROP TABLE IF EXISTS public.olist_order_items;

CREATE TABLE IF NOT EXISTS public.olist_order_items
(
    order_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    order_item_id integer NOT NULL,
    product_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    seller_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    shipping_limit_date timestamp without time zone NOT NULL,
    price numeric(10,2) NOT NULL,
    freight_value numeric(10,2) NOT NULL,
    CONSTRAINT olist_order_items_pkey PRIMARY KEY (order_id, order_item_id),
    CONSTRAINT olist_order_items_order_id_fkey FOREIGN KEY (order_id)
        REFERENCES public.olist_orders (order_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT olist_order_items_product_id_fkey FOREIGN KEY (product_id)
        REFERENCES public.olist_products (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT olist_order_items_seller_id_fkey FOREIGN KEY (seller_id)
        REFERENCES public.olist_sellers (seller_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_order_items
    OWNER to postgres;