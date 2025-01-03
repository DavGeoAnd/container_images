#!/bin/bash

OTEL_JAVA_AGENT_VERSION=$(yq '.otel-java-agent.version' ~/Development/apps/container_images/otel-java-agent/version.yaml)

rm ./opentelemetry-javaagent.jar
wget https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v"${OTEL_JAVA_AGENT_VERSION}"/opentelemetry-javaagent.jar -P .