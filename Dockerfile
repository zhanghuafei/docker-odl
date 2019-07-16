FROM centos

ENV MYPATH /usr/local/
WORKDIR $MYPATH

#JAVA CONFIGURATION
    #COPY AND UNCOMPRESS
ADD jdk-8u211-linux-x64.tar.gz /usr/local/
ENV JAVA_HOME /usr/local/jdk1.8.0_211
ENV CLASSPATH $JAVA_HOME/lit/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin

RUN java -version

#OPENDAYLIGHT CONFIGURATION
ADD opendaylight-0.10.1.tar.gz $MYPATH
ENV PATH $PATH:$MYPATH/opendaylight-0.10.1/bin

CMD ["karaf", "clean debug"]

EXPOSE 8181

