FROM ubuntu:14.04
RUN mkdir /app
WORKDIR /app
RUN curl -L "http://dl.bintray.com/neilellis/dollar/dollar-0.1.4-902.tgz" -o /tmp/dollar.tgz
RUN tar -zxvf /tmp/dollar.tgz
RUN /app/dollar/bin/dollar init.ds
ENTRYPOINT /app/dollar/bin/dollar
CMD hello.ds

