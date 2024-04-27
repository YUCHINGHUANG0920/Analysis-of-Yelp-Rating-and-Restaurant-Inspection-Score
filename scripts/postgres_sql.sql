CREATE SCHEMA IF NOT EXISTS nyc_resturant_inspection;

CREATE  TABLE nyc_resturant_inspection.dim_date ( 
	date_id              INT  NOT NULL  ,
	"year"               INT    ,
	quarter              INT    ,
	"month"              INT    ,
	"day"                INT    ,
	month_name           varchar(100)    ,
	day_name             varchar(100)    ,
	week_of_the_year     INT    ,
	week_of_the_month    INT    ,
	date_iso_format      date    ,
	CONSTRAINT pk_dim_date PRIMARY KEY ( date_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_inspection_type ( 
	inspection_id        INT  NOT NULL  ,
	inspection_type      varchar(255)    ,
	CONSTRAINT pk_dim_inspection PRIMARY KEY ( inspection_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_location ( 
	location_id          INT  NOT NULL  ,
	building             varchar(255)    ,
	street               varchar(255)    ,
	zipcode              INT    ,
	borough              varchar(20)    ,
	latitude             numeric(20,20)    ,
	longitude            numeric(20,20)    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_resturant ( 
	resturant_id         INT  NOT NULL  ,
	resturant_name       varchar(255)    ,
	phone                INT    ,
	cuisine_description  varchar(255)    ,
	CONSTRAINT pk_dim_resturant PRIMARY KEY ( resturant_id )
 );

CREATE  TABLE nyc_resturant_inspection.dim_violation ( 
	violation_id         INT  NOT NULL  ,
	violation_code       text  NOT NULL  ,
	violation_description varchar(255)    ,
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
	grade_date_id        INT  NOT NULL  ,
	CONSTRAINT pk_resturant_facts PRIMARY KEY ( fact_id )
 );
