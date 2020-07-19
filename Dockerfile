FROM alpine:3.10.1 AS donwloader

WORKDIR /stream/

RUN echo build $base_image
RUN apk add --no-cache wget
RUN wget https://www.cs.virginia.edu/stream/FTP/Code/stream.c -q -P .

FROM alpine:3.10.1

WORKDIR /dockbench/stream/
COPY --from=donwloader /stream /dockbench/stream

RUN apk add --no-cache gcc

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
