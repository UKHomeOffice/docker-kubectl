FROM alpine:3.4
RUN apk upgrade --no-cache
RUN apk add --no-cache bash openssl envsubst

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.3.4/bin/linux/amd64/kubectl \
  -O /usr/bin/kubectl && \
  chmod +x /usr/bin/kubectl && \
  adduser -h /home/kube -D kube && \
  mkdir -p /home/kube/.kube && \
  chown kube:kube /home/kube/.kube

WORKDIR /home/kube
USER kube
