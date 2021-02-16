-----------------------------------------------------------------------
--
-- Copyright (C) 2021 CARTO
--
-----------------------------------------------------------------------

CREATE OR REPLACE FUNCTION `@@BQ_PROJECTID@@.@@BQ_DATASET_S2@@.CORNERLATLNGS_FROMKEY`
    (key STRING) 
    RETURNS STRING 
    DETERMINISTIC
    LANGUAGE js
    OPTIONS (library=["@@S2_BQ_LIBRARY@@"])
AS """
    var cornerLatLng = S2.S2Cell.FromHilbertQuadKey(key).getCornerLatLngs();
    var geojson = {
        "type": "Polygon",
        "coordinates": [[
        [cornerLatLng[0]['lat'],cornerLatLng[0]['lng']],
        [cornerLatLng[1]['lat'],cornerLatLng[1]['lng']],
        [cornerLatLng[2]['lat'],cornerLatLng[2]['lng']],
        [cornerLatLng[3]['lat'],cornerLatLng[3]['lng']],
        [cornerLatLng[0]['lat'],cornerLatLng[0]['lng']]
        ]]
    };
    return JSON.stringify(geojson);
""";