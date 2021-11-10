----------------------------
-- Copyright (C) 2021 CARTO
----------------------------

CREATE OR REPLACE FUNCTION @@RS_PREFIX@@processing.ST_VORONOIPOLYGONS
(GEOMETRY, SUPER)
-- (points)
RETURNS VARCHAR(MAX)
STABLE
AS $$
    SELECT @@RS_PREFIX@@processing.__VORONOIGENERIC(ST_ASGEOJSON($1)::VARCHAR(MAX), JSON_SERIALIZE($2)::VARCHAR(MAX), 'poly')
$$ LANGUAGE sql;


CREATE OR REPLACE FUNCTION @@RS_PREFIX@@processing.ST_VORONOIPOLYGONS
(GEOMETRY)
-- (points)
RETURNS VARCHAR(MAX)
STABLE
AS $$
    SELECT @@RS_PREFIX@@processing.__VORONOIGENERIC(ST_ASGEOJSON($1)::VARCHAR(MAX), NULL, 'poly')
$$ LANGUAGE sql;