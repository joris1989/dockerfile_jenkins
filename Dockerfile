FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y nano
# drop back to the regular jenkins user - good practice
USER jenkins
EXPOSE 8080 50000
