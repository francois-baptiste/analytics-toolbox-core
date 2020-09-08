#!/bin/bash




#Iterate over all SQLs and run them in BQ
find "$(pwd)" -name "*.sql" | sort  -z |while read fname; do
  echo "$fname"
  DIR=$(dirname "${fname}")
  libname=$(echo $DIR | sed -e 's;.*\/;;')
  file_name=$(basename "${fname}")
  function_name="${file_name%.*}"

  #we iterate over the regions to update or create all functions in the different regions
  for reg in "${regions[@]}"
  do


    bq --project_id libjs4eu query --use_legacy_sql=false --flagfile=$fname

  done
done

