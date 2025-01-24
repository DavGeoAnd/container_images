#!/bin/bash

OTEL_COLLECTOR_CONTRIB_VERSION=$(yq '.otel-collector-contrib.version' ~/Development/apps/container_images/otel-service-collector/version.yaml)

echo "${OTEL_COLLECTOR_CONTRIB_VERSION}"

docker build --no-cache -t local/otel-service-collector:"${OTEL_COLLECTOR_CONTRIB_VERSION}" -t local/otel-service-collector:latest --build-arg otel_collector_version="${OTEL_COLLECTOR_CONTRIB_VERSION}" .