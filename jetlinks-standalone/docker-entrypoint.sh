#!/usr/bin/env bash
java $JAVA_OPTS -server \
-XX:+UnlockExperimentalVMOptions \
-XX:+UseCGroupMemoryLimitForHeap \
-XX:-OmitStackTraceInFastThrow \
-Xdebug -Xrunjdwp:transport=dt_socket,suspend=n,server=y,address=5005 \
-Djava.security.egd=file:/dev/./urandom \
org.springframework.boot.loader.JarLauncher