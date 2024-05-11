#!/bin/bash

NAMESPACE="${NAMESPACE:-c20-sterligova-irina}"

helm delete stg-service -n$NAMESPACE
helm delete dds-service -n $NAMESPACE
helm delete cdm-service -n $NAMESPACE