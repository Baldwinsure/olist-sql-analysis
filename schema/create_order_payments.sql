-- Table: public.olist_order_payments

-- DROP TABLE IF EXISTS public.olist_order_payments;

CREATE TABLE IF NOT EXISTS public.olist_order_payments
(
    order_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    payment_sequential integer NOT NULL,
    payment_type character varying(20) COLLATE pg_catalog."default" NOT NULL,
    payment_installments integer NOT NULL,
    payment_value numeric(10,2) NOT NULL,
    CONSTRAINT olist_order_payments_pkey PRIMARY KEY (order_id, payment_sequential),
    CONSTRAINT olist_order_payments_order_id_fkey FOREIGN KEY (order_id)
        REFERENCES public.olist_orders (order_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_order_payments
    OWNER to postgres;