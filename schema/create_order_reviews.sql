-- Table: public.olist_order_reviews

-- DROP TABLE IF EXISTS public.olist_order_reviews;

CREATE TABLE IF NOT EXISTS public.olist_order_reviews
(
    review_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    order_id character varying(32) COLLATE pg_catalog."default" NOT NULL,
    review_score integer NOT NULL,
    review_comment_title text COLLATE pg_catalog."default",
    review_comment_message text COLLATE pg_catalog."default",
    review_creation_date timestamp without time zone NOT NULL,
    review_answer_timestamp timestamp without time zone NOT NULL,
    CONSTRAINT olist_order_reviews_pkey PRIMARY KEY (review_id, order_id),
    CONSTRAINT olist_order_reviews_order_id_fkey FOREIGN KEY (order_id)
        REFERENCES public.olist_orders (order_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_order_reviews
    OWNER to postgres;