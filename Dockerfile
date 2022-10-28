FROM maven:3.8.6-openjdk-11
ADD . /src
WORKDIR /src
RUN mvn -Dmaven.test.failure.ignore clean package
RUN ls target