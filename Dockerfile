FROM frolvlad/alpine-glibc:alpine-3.4

# Set environment
ENV JAVA_HOME /usr/lib/jvm/jdk
ENV PATH $PATH:$JAVA_HOME/bin

RUN apk add --no-cache --virtual=build-dependencies wget ca-certificates \
  && mkdir /usr/lib/jvm \
  && cd /usr/lib/jvm \
  && wget -q --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz -O - | gunzip | tar x \
  && cd /usr/lib/jvm/jdk1.8.0_102 \
  && rm -rf *src.zip \
         lib/missioncontrol \
         lib/visualvm \
         lib/*javafx* \
         jre/lib/plugin.jar \
         jre/lib/ext/jfxrt.jar \
         jre/bin/javaws \
         jre/lib/javaws.jar \
         jre/lib/desktop \
         jre/plugin \
         jre/lib/deploy* \
         jre/lib/*javafx* \
         jre/lib/*jfx* \
         jre/lib/amd64/libdecora_sse.so \
         jre/lib/amd64/libprism_*.so \
         jre/lib/amd64/libfxplugins.so \
         jre/lib/amd64/libglass.so \
         jre/lib/amd64/libgstreamer-lite.so \
         jre/lib/amd64/libjavafx*.so \
         jre/lib/amd64/libjfx*.so \
  && ln -s /usr/lib/jvm/jdk1.8.0_102 /usr/lib/jvm/jdk \
  && apk del build-dependencies \
  && rm -rf /tmp/*
