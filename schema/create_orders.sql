-- Table: public.olist_orders

-- DROP TABLE IF EXISTS public.olist_orders;

CREATE TABLE IF NOT EXISTS public.olist_orders
(
    order_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    customer_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    order_status character varying(20) COLLATE pg_catalog."default" NOT NULL,
    order_purchase_timestamp timestamp without time zone NOT NULL,
    order_approved_at timestamp without time zone,
    order_delivered_carrier_date timestamp without time zone,
    order_delivered_customer_date timestamp without time zone,
    order_estimated_delivery_date timestamp without time zone NOT NULL,
    CONSTRAINT olist_orders_pkey PRIMARY KEY (order_id),
    CONSTRAINT olist_orders_customer_id_fkey FOREIGN KEY (customer_id)
        REFERENCES public.olist_customers (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_orders
    OWNER to postgres;