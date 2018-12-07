#!/usr/bin/env bash
echo src:
cat src/main/docker/maven/*
./mvnw >/dev/null
echo result 1:
cat target/docker-compose-maven.yaml
./mvnw -Dmy.value='ololo trololo!' >/dev/null
echo result 2:
cat target/Dockerfile
