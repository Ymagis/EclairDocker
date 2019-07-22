FROM alpine:3.8

WORKDIR /asdcplib

COPY asdcplib-*.tar.gz .

RUN tar -xf asdcplib-*.tar.gz

RUN apk add --no-cache --virtual build-dependencies openssl-dev build-base autoconf libtool automake && \
    cd asdcplib-* && \
    autoreconf -if && ./configure --prefix=/asdcplib/install && \
    make -j && make install && \
    cd .. && rm -rf asdcplib-* && \
    apk del build-dependencies && apk add --no-cache libstdc++ openssl

CMD /asdcplib/install/bin/asdcp-info -V
