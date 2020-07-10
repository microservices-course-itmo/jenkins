FROM jenkins/jenkins:jdk11

USER root

RUN apt-get update && \
apt-get install -y maven && \
apt-get install -y git

ENV DOCKER_IP 127.0.0.1
ENV JFROG_ARTIFACTORY_IP 127.0.0.1
ENV DOCKER_REGISTRY_IP 127.0.0.1

ENV JENKINS_OPTS="--httpPort=8090"