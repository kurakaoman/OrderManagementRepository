CREATE TABLE orders
(
   ordersid integer NOT NULL,
   amount_of_money double precision,
   expiration_date timestamp without time zone,
   is_active boolean,
   order_number integer,
   payment_period character varying(255) COLLATE pg_catalog."default",
   start_date timestamp without time zone,
   sys_id integer,
   CONSTRAINT orders_pkey PRIMARY KEY (ordersid),
   CONSTRAINT fkssl23jr0h62ed55kdet26cuqc FOREIGN KEY (sys_id)
       REFERENCES public.systems (system_id) MATCH SIMPLE
       ON UPDATE NO ACTION
       ON DELETE NO ACTION
);


CREATE TABLE public.systems
(
    system_id integer NOT NULL,
    client character varying(255) COLLATE pg_catalog."default",
    system_description character varying(255) COLLATE pg_catalog."default",
    system_name character varying(255) COLLATE pg_catalog."default",
    technology_description character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT systems_pkey PRIMARY KEY (system_id)
);

INSERT into systems (system_id,client,system_name,system_description,technology_description) values(0,'Stark industry','Power-boost','System allow boost IronMan with extra power','Language: Java, db MySQL, IDE Eclipse');
INSERT into systems (system_id,client,system_name,system_description,technology_description) values(1,'Stark industry','Stark Medical System','Stark Medical System (SMC) was designed to helps to make a diagnosis - expert program','Language: Java, db MySQL, IDE Eclipse');
INSERT into systems (system_id,client,system_name,system_description,technology_description) values(2,'X-Mansion','Join-X','System design to improve the recruitment process in X-Mansion ','Language: Objective C, db postgreSQL, IDE Intellij');


INSERT into orders (ordersid, amount_of_money,expiration_date,is_active,order_number,payment_period,start_date,sys_id) values(0,'120.5','2008-11-11 13:23:44','true','10055','MONTHLY','2018-11-11 13:23:44','0');
INSERT into orders (ordersid, amount_of_money,expiration_date,is_active,order_number,payment_period,start_date,sys_id) values(1,'300.0','2010-06-01 00:00:00','true','10070','MONTHLY','2020-12-11 00:00:00','1');
INSERT into orders (ordersid, amount_of_money,expiration_date,is_active,order_number,payment_period,start_date,sys_id) values(2,'600','2012-03-09 00:00:00','true','11089','QUARTERLY','2022-03-10 00:00:00','2');


