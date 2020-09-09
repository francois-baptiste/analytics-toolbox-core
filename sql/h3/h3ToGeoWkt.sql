CREATE OR REPLACE FUNCTION libjs4eu.h3.h3ToGeoWkt(h3Index STRING)
  RETURNS STRING
  LANGUAGE js AS
"""
var p = h3.h3ToGeo(h3Index);
return "POINT("+p[1]+" "+p[0]+")";
"""
OPTIONS (
  library=["gs://bigquery-jslibs/h3-js.umd.js"]
);