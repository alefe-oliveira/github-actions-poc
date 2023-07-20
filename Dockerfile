FROM openjdk:17-jdk-slim

MAINTAINER alefe-lenora-dev

LABEL source="https://github.com/alefe-oliveira/github-actions-poc" \
      author="alefe-lenora-dev"

WORKDIR /opt

ENV PORT 8080
EXPOSE 8080

COPY build/libs/github-actions-poc-*-all.jar /app/github-actions-poc.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /app/github-actions-poc.jar