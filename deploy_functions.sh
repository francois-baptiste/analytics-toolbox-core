#!/bin/bash

#Deploy JS libraries
gsutil cp libs/*  gs://bigquery-libjs4us/

#Iterate over all SQLs and run them in BQ
find "$(pwd)" -name "*.sql" | sort  -z |while read fname; do
  echo "$fname"
  bq --project_id libjs4us query --use_legacy_sql=false --flagfile=$fname
done

