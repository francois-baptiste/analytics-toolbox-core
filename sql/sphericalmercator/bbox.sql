CREATE OR REPLACE FUNCTION libjs4eu.sphericalmercator.bbox(x NUMERIC, y NUMERIC,zoom NUMERIC, tileSize NUMERIC )
  RETURNS ARRAY<FLOAT64>
  LANGUAGE js AS
"""

	var merc = new SphericalMercator({
	    size: tileSize
	});

	return merc.bbox(x,y,zoom);

"""
OPTIONS (
  library=["gs://bigquery-jslibs/sphericalmercator.js"]
);
