
#!/bin/bash

IMAGE_TAG="${IMAGE_TAG:-v2024-05-10-r1}"

docker push cr.yandex/crpdve0o1ht5lfmi93bo/cdm_service:$IMAGE_TAG

docker push cr.yandex/crpdve0o1ht5lfmi93bo/dds_service:$IMAGE_TAG 

docker push cr.yandex/crpdve0o1ht5lfmi93bo/stg_service:$IMAGE_TAG 