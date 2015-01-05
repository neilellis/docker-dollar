FROM ubuntu:14.04
MAINTAINER hello@neilellis.me
RUN mkdir /app
RUN mkdir /data
RUN mkdir /examples
WORKDIR /app
RUN apt-get install -y curl
RUN curl -L "http://dl.bintray.com/neilellis/dollar/dollar-0.1.4-902.tgz" -o /tmp/dollar.tgz
RUN tar -zxvf /tmp/dollar.tgz
ADD examples/* /examples/
WORKDIR /data
RUN /app/dollar/bin/dollar /examples/init.ds

ENTRYPOINT /app/dollar/bin/dollar
CMD /examples/hello.ds
VOLUME /cwd


