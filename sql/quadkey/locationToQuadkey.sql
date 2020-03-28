CREATE OR REPLACE FUNCTION libjs4us.quadkey.locationToQuadkey(latitude FLOAT64, longitude FLOAT64, resolution NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return locationToQuadkey({ lat: latitude, lng: longitude }, resolution);
"""
OPTIONS (
  library=["gs://bigquery-libjs4us/quadkey.js"]
);
