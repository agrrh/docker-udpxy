FROM buildpack-deps as builder

ARG UDPXY_SRC_URL
ENV UDPXY_SRC_URL=${UDPXY_SRC_URL:-"http://www.udpxy.com/download/udpxy/udpxy-src.tar.gz"}

WORKDIR /tmp
RUN wget -O udpxy-src.tar.gz ${UDPXY_SRC_URL}
RUN tar -xzvf udpxy-src.tar.gz
RUN cd udpxy-* && make && make install

FROM debian:stable

COPY --from=builder /usr/local/bin/udpxy /usr/local/bin/udpxy
COPY --from=builder /usr/local/bin/udpxrec /usr/local/bin/udpxrec

CMD ["/usr/local/bin/udpxy", "-v", "-T", "-p", "4022"]
