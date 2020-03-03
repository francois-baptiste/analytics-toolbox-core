CREATE OR REPLACE FUNCTION `data-science-229608`.sphericalmercator.bbox(x NUMERIC, y NUMERIC,zoom NUMERIC, tileSize NUMERIC )
  RETURNS ARRAY<FLOAT64>
  LANGUAGE js AS
"""

	var merc = new SphericalMercator({
	    size: tileSize
	});

	return merc.bbox(x,y,zoom);

"""
OPTIONS (
  library=["gs://bigquery-data-science-229608/sphericalmercator.js"]
);
