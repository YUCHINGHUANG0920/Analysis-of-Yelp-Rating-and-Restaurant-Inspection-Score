CREATE SCHEMA IF NOT EXISTS nyc_resturant_inspection;

CREATE  TABLE nyc_resturant_inspection.dim_date ( 
	date_id              INT  NOT NULL  ,
	"year"               INT    ,
	quarter              INT    ,
	"month"              INT    ,
	"day"                INT    ,
	month_name           VARCHAR(100)    ,
	day_name             VARCHAR(100)    ,
	week_of_the_year     INT    ,
	week_of_the_month    INT    ,
	date_iso_format      DATE    ,
	CONSTRAINT pk_dim_date PRIMARY KEY ( date_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_inspection_type ( 
	inspection_id        INT  NOT NULL  ,
	inspection_type      VARCHAR(255)    ,
	CONSTRAINT pk_dim_inspection PRIMARY KEY ( inspection_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_location ( 
	location_id          INT  NOT NULL  ,
	building             VARCHAR(255)    ,
	street               VARCHAR(255)    ,
	zipcode              INT    ,
	borough              VARCHAR(20)    ,
	latitude             DECIMAL(20,20)    ,
	longitude            DECIMAL(20,20)    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_resturant ( 
	resturant_id         INT  NOT NULL  ,
	resturant_name       VARCHAR(255)    ,
	phone                INT    ,
	cuisine_description  VARCHAR(255)    ,
	CONSTRAINT pk_dim_resturant PRIMARY KEY ( resturant_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_violation ( 
	violation_id         INT  NOT NULL  ,
	violation_code       TEXT  NOT NULL  ,
	violation_description VARCHAR(255)    ,
	CONSTRAINT pk_dim_violation PRIMARY KEY ( violation_id )
 );

CREATE  TABLE nyc_resturant_inspection.resturant_facts ( 
	fact_id              INT  NOT NULL  ,
	inspection_score     INT    ,
	yelp_star            INT    ,
	yelp_review_count    INT    ,
	critical_flag        INT    ,
	grade                INT    ,
	location_id          INT  NOT NULL  ,
	resturant_id         INT  NOT NULL  ,
	inspection_id        INT  NOT NULL  ,
	inspection_date_id   INT  NOT NULL  ,
	violation_id         INT  NOT NULL  ,
	violation_date_id    INT  NOT NULL  ,
	CONSTRAINT pk_resturant_facts PRIMARY KEY ( fact_id )
 );
