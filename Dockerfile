FROM adoptopenjdk:11-jdk-hotspot
ARG JAR_FILE=build/libs/sbsj_process-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
RUN chmod +x app.jar

RUN apt-get update && apt-get install -y bash

# 여기서 wait-for-it.sh 를 설치하고 권한을 준다
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /
RUN chmod +x /wait-for-it.sh

ENTRYPOINT [ "java", "-jar", "/app.jar" ]
