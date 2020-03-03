CREATE OR REPLACE FUNCTION datascience229608.h3.h3ToGeoWkt(h3Index STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
var p = h3.h3ToGeo(h3Index);
return "POINT("+p[1]+" "+p[0]+")";
"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/h3-js.umd.js"]
);