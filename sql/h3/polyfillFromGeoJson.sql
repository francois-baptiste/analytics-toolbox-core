CREATE OR REPLACE FUNCTION libjs4eu.h3.polyfillFromGeoJson(geojson STRING, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""

  const featureGeometry = JSON.parse(geojson)

  if (!['Polygon', 'MultiPolygon'].includes(featureGeometry.type)) {
    throw new Error(`Unsupported geometry type ${featureGeometry.type}`);
  }

  const polygonCoordinates =
    featureGeometry.type === 'MultiPolygon'
      ? featureGeometry.coordinates
      : [featureGeometry.coordinates];

  const hexes = polygonCoordinates.reduce(
    (acc, coordinates) => acc.concat(h3.polyfill(coordinates, resolution, true)),
    []
  );

  return hexes;
"""
OPTIONS (
  library=["gs://bigquery-libjs4eu/h3-js.umd.js"]
);