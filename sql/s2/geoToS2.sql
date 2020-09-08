CREATE OR REPLACE FUNCTION libjs4eu.s2.geoToS2(latitude FLOAT64, longitude FLOAT64, resolution NUMERIC) AS (
  (SELECT STRING_AGG(FORMAT('%02x', CAST(libjs4eu.s2.latLngToId(latitude, longitude, resolution) AS INT64) >> (byte * 8) & 0xff), '' ORDER BY byte DESC)
   FROM UNNEST(GENERATE_ARRAY(0, 7)) AS byte)
);

