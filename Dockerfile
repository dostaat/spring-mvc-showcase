FROM leszko/jenkins-docker-slave

RUN apt-get update
RUN apt-get install maven
RUN mkdir /var/jenkins
RUN chmod -R 777 /var/jenkins
