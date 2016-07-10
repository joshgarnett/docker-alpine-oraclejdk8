Oracle JDK 8 Docker image
========================

This image is built on top of the Alpine Linux image, which is only a 5MB image, and contains
[Oracle JDK 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html).

This is based on the work at [frol/docker-alpine-oraclejdk8](https://github.com/frol/docker-alpine-oraclejdk8).  The main changes are it pulls down the Oracle JDK and makes no changes to the install.  This results in a larger docker container, but there are no concerns with accidentally removing needed files from the Oracle package.
