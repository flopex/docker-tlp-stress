FROM alpine

RUN apk add --no-cache \
    bash \
    git \
    openjdk8


WORKDIR /code

RUN git clone https://github.com/thelastpickle/tlp-stress.git

RUN cd tlp-stress && ./gradlew assemble

ENTRYPOINT ["/code/tlp-stress/bin/tlp-stress"]
