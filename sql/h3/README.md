# h3

Taken from here https://github.com/uber/h3-js

## Examples:

ST_H3_POLYFILLFROMGEOG example usage

```with data as (
select libjs4ue.h3.ST_H3_POLYFILLFROMGEOG(tract_geom,10) as geo from `bigquery-public-data.geo_census_tracts`.census_tracts_alabama limit 1
)
SELECT libjs4ue.h3.ST_H3_BOUNDARY(h3) as h3geo FROM data,UNNEST(geo) as h3
```


```with data as (
select libjs4ue.h3.compact(libjs4ue.h3.ST_H3_POLYFILLFROMGEOG(tract_geom,11)) as geo from `bigquery-public-data.geo_census_tracts`.census_tracts_alabama limit 1
)
SELECT libjs4ue.h3.ST_H3_BOUNDARY(h3) as h3geo FROM data,UNNEST(geo) as h3
```

