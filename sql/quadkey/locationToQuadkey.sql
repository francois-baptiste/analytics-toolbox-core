CREATE OR REPLACE FUNCTION data-science-229608.quadkey.locationToQuadkey(latitude FLOAT64, longitude FLOAT64, resolution NUMERIC)
  RETURNS STRING
  LANGUAGE js AS
"""
return locationToQuadkey({ lat: latitude, lng: longitude }, resolution);
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);
