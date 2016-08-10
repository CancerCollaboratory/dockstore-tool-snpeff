#!/usr/bin/env bash
# Call tool with parameters
cp -R /snpEff/* .
java $JAVA_OPTS -jar snpEff.jar "$@"
