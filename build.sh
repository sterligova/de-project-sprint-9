#!/bin/bash

IMAGE_TAG="${IMAGE_TAG:-v2024-05-10-r1}"

docker build -t cr.yandex/crpdve0o1ht5lfmi93bo/cdm_service:$IMAGE_TAG ./solution/service_cdm

docker build -t cr.yandex/crpdve0o1ht5lfmi93bo/dds_service:$IMAGE_TAG ./solution/service_dds

docker build -t cr.yandex/crpdve0o1ht5lfmi93bo/stg_service:$IMAGE_TAG ./solution/service_stg