ARG IMAGE=intersystemsdc/iris-community
ARG IMAGE=containers.intersystems.com/intersystems/iris-community:latest-em
FROM $IMAGE
USER root
WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY src src
COPY module.xml module.xml
COPY iris.script iris.script


RUN iris start IRIS \
	&& iris session IRIS < iris.script \
    && iris stop IRIS quietly 
