#!/bin/bash

project_gcp="robotic-tide-284315"
app_name="sample-app"
email="allanasodreferreira@gmail.com"
default_image_version="v1"
gate_ip="http://34.74.78.163"

cp pipeline-template.json ../pipeline-$app_name.json

sed -i s/_project_gcp/$project_gcp/g ../pipeline-$app_name.json
sed -i s/_app_name/$app_name/g ../pipeline-$app_name.json
sed -i s/_image_name/$app_name/g ../pipeline-$app_name.json
sed -i s/_default_image_version/$default_image_version/g ../pipeline-$app_name.json



./spin application save --application-name sample-app \
                        --owner-email $email \
                        --cloud-providers kubernetes \
                        --gate-endpoint $gate_ip


./spin pipeline save --gate-endpoint $gate_ip -f ../pipeline-$app_name.json