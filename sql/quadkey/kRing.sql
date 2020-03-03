CREATE OR REPLACE FUNCTION data-science-229608.quadkey.kRing(quadkey STRING, ringSize NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
var left      = sibling(quadkey,'left');
var topleft   = sibling(left,'up');
var downleft  = sibling(left,'down');
var right     = sibling(quadkey,'left');
var topright  = sibling(right,'up');
var downright = sibling(right,'down');
var up        = sibling(quadkey,'up');
var down      = sibling(quadkey,'down');

return [left,topleft,downleft,right,topright,downright,up,down,quadkey];

"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/quadkey.js"]
);