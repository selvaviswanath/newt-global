-- UUID 
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- generate a UUID

SELECT uuid_generate_v1();
-- e217a324-7e1b-11ee-becf-2f32572711af
-- e90ceb3a-7e1b-11ee-bed0-f7255f84f17f
-- v1 uses timestamp with random value

SELECT uuid_generate_v4();
-- completely random

CREATE TABLE ids_names (
	_uuid VARCHAR(50) DEFAULT uuid_generate_v4(),
	uname VARCHAR(20) NOT NULL
);
INSERT INTO ids_names(uname) VALUES 
('vishwa'),
('selva');
SELECT * FROM ids_names;
-------------
-------------


-- hstore stores maps
CREATE EXTENSION IF NOT EXISTS hstore;

CREATE TABLE hstore_table(
	bid SERIAL PRIMARY KEY,
	bname VARCHAR(20),
	binfo hstore
);

-- use =>

INSERT INTO hstore_table(bname, binfo) VALUES
(
	'sample',
	'
		"author"=> "nas",
		"title"=> "hooked"
	'
);


SELECT binfo -> 'author', binfo->'title' FROM hstore_table;


----
CREATE TABLE json_table(
	did SERIAL PRIMARY KEY,
	docs json
);
INSERT INTO json_table(docs) VALUES
	('[1,2,3,4]'),
	('[3,4,5,6]'),
	('{"k":"v"}');
	
ALTER TABLE json_table
ALTER COLUMN docs TYPE jsonb;

SELECT did, docs @> '3' FROM json_table;
SELECT did, docs FROM json_table
WHERE docs @> '3';


-- use GIN indexing for faster retrieval 
CREATE INDEX ON json_table USING GIN (docs jsonb_path_ops);