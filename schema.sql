CREATE TABLE IF NOT EXISTS services_311 (
	id SERIAL NOT NULL, 
	unique_key INTEGER, 
	date DATE, 
	complaint_type VARCHAR, 
	zipcode INTEGER, 
	latitude FLOAT, 
	longitude FLOAT, 
	geometry geometry(POINT,4326), 
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS trees (
	id SERIAL NOT NULL, 
	date DATE, 
	tree_id INTEGER, 
	species VARCHAR, 
	health VARCHAR, 
	status VARCHAR, 
	zipcode INTEGER, 
	latitude FLOAT, 
	longitude FLOAT, 
	geometry geometry(POINT,4326), 
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS zillow (
	id SERIAL NOT NULL, 
	zipcode INTEGER, 
	state VARCHAR, 
	city VARCHAR, 
	metro VARCHAR, 
	county VARCHAR, 
	date DATE, 
	rent FLOAT, 
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS zipcodes (
	id SERIAL NOT NULL, 
	zipcode INTEGER, 
	region VARCHAR, 
	population INTEGER, 
	area FLOAT, 
	county VARCHAR, 
	geometry geometry(POLYGON,4326), 
	PRIMARY KEY (id)
);

