#!/usr/bin/env bash

echo maven src:
cat src/main/docker/maven/Dockerfile
./mvnw >/dev/null
echo result 1:
cat target/Dockerfile
./mvnw -Dmy.value='ololo trololo!' >/dev/null
echo result 2:
cat target/Dockerfile

echo gradle src:
cat src/main/docker/gradle/Dockerfile
./gradlew >/dev/null
echo result 1:
cat build/resources/main/Dockerfile
./gradlew -Pmy.value='hola!' >/dev/null
echo result 2:
cat build/resources/main/Dockerfile
