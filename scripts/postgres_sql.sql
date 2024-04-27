CREATE SCHEMA IF NOT EXISTS nyc_restaurant_inspection;

CREATE  TABLE nyc_restaurant_inspection.dim_date ( 
	date_id              bigint  NOT NULL  ,
	"year"               integer    ,
	quarter              integer    ,
	"month"              integer    ,
	"day"                integer    ,
	month_name           varchar(100)    ,
	day_name             varchar(100)    ,
	week_of_the_year     integer    ,
	week_of_the_month    integer    ,
	date_iso_format      date    ,
	CONSTRAINT pk_dim_date PRIMARY KEY ( date_id )
 );

CREATE  TABLE nyc_restaurant_inspection.dim_inspection_type ( 
	inspection_id        bigint  NOT NULL  ,
	inspection_type      varchar(255)    ,
	CONSTRAINT pk_dim_inspection PRIMARY KEY ( inspection_id )
 );

CREATE  TABLE nyc_restaurant_inspection.dim_location ( 
	location_id          bigint  NOT NULL  ,
	building             varchar(255)    ,
	street               varchar(255)    ,
	zipcode              integer    ,
	borough              varchar(20)    ,
	latitude             numeric(30,12)    ,
	longitude            numeric(30,12)    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE nyc_restaurant_inspection.dim_restaurant ( 
	restaurant_id        bigint  NOT NULL  ,
	restaurant_name      varchar(255)    ,
	phone                text    ,
	cuisine_description  varchar(255)    ,
	CONSTRAINT pk_dim_restaurant PRIMARY KEY ( restaurant_id )
 );

CREATE  TABLE nyc_restaurant_inspection.dim_violation ( 
	violation_id         bigint  NOT NULL  ,
	violation_code       text  NOT NULL  ,
	violation_description varchar(400)    ,
	CONSTRAINT pk_dim_violation PRIMARY KEY ( violation_id )
 );

CREATE  TABLE nyc_restaurant_inspection.restaurant_facts ( 
	fact_id              bigint  NOT NULL  ,
	inspection_score     integer    ,
	yelp_star            numeric(2,1)    ,
	yelp_review_count    integer    ,
	critical_flag        integer    ,
	grade                integer    ,
	locstion_id          bigint    ,
	restaurant_id        bigint    ,
	inspection_id        bigint    ,
	inspection_date_id   bigint    ,
	violation_id         bigint    ,
	grade_date_id        bigint    ,
	CONSTRAINT pk_restaurant_facts PRIMARY KEY ( fact_id )
 ) 
