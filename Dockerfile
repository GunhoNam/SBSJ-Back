FROM openjdk:11
ARG JAR_FILE=build/libs/sbsj_process-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
RUN chmod +x app.jar

RUN apk add --no-cache --update bash
# 여기서 wait-for-it.sh 를 설치하고 권한을 준다
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /
RUN chmod +x /wait-for-it.sh

ENTRYPOINT [ "java", "-jar", "/app.jar" ]
