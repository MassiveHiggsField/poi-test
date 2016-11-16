#!/usr/bin/env bash

set -e

MAVEN_OPTS="" mvn exec:java -Dexec.args="XSSF 50000 100 0" | grep "POI-TEST"
MAVEN_OPTS="-Dorg.apache.poi.util.POILogger=org.apache.poi.util.NullLogger" mvn exec:java -Dexec.args="XSSF 50000 100 0" | grep "POI-TEST"
MAVEN_OPTS="-Dorg.apache.poi.util.POILogger=org.apache.commons.logging.impl.NoOpLog" mvn exec:java -Dexec.args="XSSF 50000 100 0" | grep "POI-TEST"
MAVEN_OPTS="-XX:+AggressiveHeap" mvn exec:java -Dexec.args="XSSF 50000 100 0" | grep "POI-TEST"
MAVEN_OPTS="-Xmx4g -Xms4g" mvn exec:java -Dexec.args="XSSF 50000 100 0" | grep "POI-TEST"
