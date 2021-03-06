FROM alpine:3.4
RUN apk upgrade --no-cache
RUN apk add --no-cache bash openssl gettext

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.3.5/bin/linux/amd64/kubectl \
  -O /usr/bin/kubectl && chmod +x /usr/bin/kubectl
