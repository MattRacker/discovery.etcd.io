FROM golang:1.6
MAINTAINER "CoreOS, Inc"
EXPOSE 8087

COPY . /go/src/github.com/coreos/discovery.etcd.io
RUN go install -v github.com/coreos/discovery.etcd.io

CMD ["discovery.etcd.io"]
