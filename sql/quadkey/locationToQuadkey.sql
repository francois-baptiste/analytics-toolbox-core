CREATE OR REPLACE FUNCTION libjs4eu.quadkey.locationToQuadkey(latitude FLOAT64, longitude FLOAT64, resolution NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return locationToQuadkey({ lat: latitude, lng: longitude }, resolution);
"""
OPTIONS (
  library=["gs://bigquery-geolib/quadkey.js"]
);
