#!/bin/bash

content_type=$(curl --write-out %{content_type} -o public/sherlock.svg -m 60 -X GET 'http://www.ldf.fi/service/rdf-grapher?from=ttl&to=svg&rdf=https://raw.githubusercontent.com/thisIsTheFoxe/semantic-web/master/RDFS/rdfs.ttl')

if [[ "$content_type" == *"image/svg+xml"* ]] ; then
  echo "SVG generation successful"
  exit 0
else
  echo "Content type is $content_type"
  exit 1
fi