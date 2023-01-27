FROM alpine:3.17.1
RUN apk upgrade --no-cache
RUN apk add --no-cache bash openssl gettext

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.26.1/bin/linux/amd64/kubectl \
  -O /usr/bin/kubectl && chmod +x /usr/bin/kubectl
