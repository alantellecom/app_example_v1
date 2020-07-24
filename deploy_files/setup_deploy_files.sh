#!/bin/bash


project_gcp="robotic-tide-284315"
app_name="sample-app"
image_version="v1"


cp  -r k8s/ ..
cp  cloudbuild.yaml .. 

sed -i s/_project_gcp/$project_gcp/g ../k8s/*
sed -i s/_image_name/$app_name/g ../k8s/*

sed -i s/_project_gcp/$project_gcp/g ../cloudbuild.yaml
sed -i s/_image_name/$app_name/g ../cloudbuild.yaml
sed -i s/_image_version/$image_version/g ../cloudbuild.yaml


