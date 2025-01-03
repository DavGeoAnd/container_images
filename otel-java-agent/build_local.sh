#!/bin/bash

JAVA_VERSION=$(yq '.java.version' ~/Development/apps/container_images/otel-java-agent/version.yaml)
OTEL_JAVA_AGENT_VERSION=$(yq '.otel-java-agent.version' ~/Development/apps/container_images/otel-java-agent/version.yaml)

echo "${JAVA_VERSION}"
echo "${OTEL_JAVA_AGENT_VERSION}"

docker build --no-cache -t local/java-otel-agent:"${JAVA_VERSION}"-"${OTEL_JAVA_AGENT_VERSION}" -t local/java-otel-agent:latest --build-arg java_version="${JAVA_VERSION}" .