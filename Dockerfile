FROM java:8
VOLUME /tmp
RUN mkdir -p /opt/spring/modules
ADD artifacts/modules /opt/spring/modules
ADD build/libs/module-launcher-0.0.1-SNAPSHOT.jar module-launcher.jar
RUN bash -c 'touch /module-launcher.jar'
