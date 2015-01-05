MAINTAINER hello@neilellis.me

FROM ubuntu:14.04
RUN mkdir /app
RUN mkdir /data
RUN mkdir /examples
WORKDIR /app
RUN curl -L "http://dl.bintray.com/neilellis/dollar/dollar-0.1.4-902.tgz" -o /tmp/dollar.tgz
RUN tar -zxvf /tmp/dollar.tgz
ADD examples/* /examples
WORKDIR /data
RUN /app/dollar/bin/dollar /examples/init.ds

ENTRYPOINT /app/dollar/bin/dollar
CMD /examples/hello.ds
VOLUME /cwd


