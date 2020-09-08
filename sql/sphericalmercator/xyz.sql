CREATE OR REPLACE FUNCTION libjs4eu.sphericalmercator.xyz(bbox ARRAY<FLOAT64>, zoom NUMERIC, tileSize NUMERIC)
	RETURNS STRUCT<minX NUMERIC,minY NUMERIC,maxX NUMERIC,maxY NUMERIC>
  	LANGUAGE js AS
"""

	var merc = new SphericalMercator({
	    size: tileSize
	});

	return merc.xyz(bbox,zoom);

"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/sphericalmercator.js"]
);
