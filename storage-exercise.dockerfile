#containerfile

FROM alpine:latest as builder

WORKDIR /app

COPY data.txt .

FROM fedora:latest as final

WORKDIR /

COPY --from=builder /app/data.txt /data.txt
