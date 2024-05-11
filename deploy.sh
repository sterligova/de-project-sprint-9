#!/bin/bash

IMAGE_TAG="${IMAGE_TAG:-v2024-05-10-r1}"
PASSWORD="${PASSWORD}"
NAMESPACE="${NAMESPACE:-c20-sterligova-irina}"

helm upgrade --install --set image.tag=$IMAGE_TAG --set config.KAFKA_CONSUMER_PASSWORD=$PASSWORD --set config.REDIS_PASSWORD=$PASSWORD --set config.PG_WAREHOUSE_PASSWORD=$PASSWORD stg-service ./solution/service_stg/app -n $NAMESPACE

helm upgrade --install --set image.tag=$IMAGE_TAG --set config.KAFKA_CONSUMER_PASSWORD=$PASSWORD --set config.REDIS_PASSWORD=$PASSWORD --set config.PG_WAREHOUSE_PASSWORD=$PASSWORD dds-service ./solution/service_dds/app -n $NAMESPACE

helm upgrade --install --set image.tag=$IMAGE_TAG --set config.KAFKA_CONSUMER_PASSWORD=$PASSWORD --set config.REDIS_PASSWORD=$PASSWORD --set config.PG_WAREHOUSE_PASSWORD=$PASSWORD cdm-service ./solution/service_cdm/app -n $NAMESPACE
