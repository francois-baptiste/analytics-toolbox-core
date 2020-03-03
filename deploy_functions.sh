#!/bin/bash

#Deploy JS libraries
gsutil cp libs/*  gs://bigquery-data-science-229608/

#Iterate over all SQLs and run them in BQ
find "$(pwd)" -name "*.sql" | sort  -z |while read fname; do
  echo "$fname"
  bq --project_id data-science-229608 query --use_legacy_sql=false --flagfile=$fname
done

