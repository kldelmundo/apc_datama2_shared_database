SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';




CREATE TABLE kldelmundo.customer (
    cust_id integer NOT NULL,
    cust_lname character varying NOT NULL,
    cust_fname character varying NOT NULL
);


ALTER TABLE kldelmundo.customer OWNER TO datama2mi182;



COMMENT ON TABLE kldelmundo.customer IS 'table for customer';



CREATE VIEW kldelmundo.customer_view AS
 SELECT customer.cust_id,
    customer.cust_lname,
    customer.cust_fname
   FROM kldelmundo.customer
  WHERE (customer.cust_id > 200);


ALTER TABLE kldelmundo.customer_view OWNER TO datama2mi182;



CREATE VIEW kldelmundo.customer_view2 AS
 SELECT customer.cust_id,
    customer.cust_lname,
    customer.cust_fname
   FROM kldelmundo.customer
  WHERE (customer.cust_id > 9);


ALTER TABLE kldelmundo.customer_view2 OWNER TO datama2mi182;



CREATE TABLE kldelmundo."order" (
    order_id integer NOT NULL,
    order_status character varying NOT NULL,
    order_date character varying NOT NULL,
    order_delivery character varying NOT NULL
);


ALTER TABLE kldelmundo."order" OWNER TO datama2mi182;



COMMENT ON TABLE kldelmundo."order" IS 'table for order';




CREATE VIEW kldelmundo.order_view AS
 SELECT "order".order_id,
    "order".order_date,
    "order".order_delivery,
    "order".order_status
   FROM kldelmundo."order"
  WHERE ("order".order_id > 200);


ALTER TABLE kldelmundo.order_view OWNER TO datama2mi182;


CREATE VIEW kldelmundo.order_view2 AS
 SELECT "order".order_id,
    "order".order_date,
    "order".order_delivery,
    "order".order_status
   FROM kldelmundo."order"
  WHERE ("order".order_id < 9);


ALTER TABLE kldelmundo.order_view2 OWNER TO datama2mi182;



CREATE VIEW kldelmundo.order_view3 AS
 SELECT "order".order_id,
    "order".order_date,
    "order".order_delivery,
    "order".order_status
   FROM kldelmundo."order"
  WHERE ("order".order_id > 9);


ALTER TABLE kldelmundo.order_view3 OWNER TO datama2mi182;



COPY kldelmundo.customer (cust_id, cust_lname, cust_fname) FROM stdin;
10	Lee	Justin
11	Javier	Simon
\.




COPY kldelmundo."order" (order_id, order_status, order_date, order_delivery) FROM stdin;
10	in progress	14-11-19	25-11-19
11	delivered	10-11-19	14-11-19
\.




ALTER TABLE ONLY kldelmundo.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cust_id);




ALTER TABLE ONLY kldelmundo."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id);




