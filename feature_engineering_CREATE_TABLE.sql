----I uploaded create table file for the checker to check my table characteristics. You can also use this code 
----so that we will have the same table attributes. This is also to avoid future errors as you run my codes.
----Kindly run from tasks 1-5 in order. I also uploaded clean_table_update for you to check my codes in cleaning
----and updating my table.

CREATE TABLE public.property_sales
(
    id integer NOT NULL,
    mssubclass character varying(100),
    lotshape character varying(100),
    landcontour character varying(100),
    landslope character varying(100),
    bldgtype character varying(100),
    housestyle character varying(100),
    overallqual character varying(50),
    overallcond character varying(50),
    lotfrontage character varying(20),
    lotarea double precision,
    garagearea double precision,
    grlivarea double precision,
    totalbsmtsf double precision,
    saleprice double precision
);

---Refresh & Import property_sales.csv to this table