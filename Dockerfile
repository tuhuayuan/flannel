FROM golang:1.6
MAINTAINER Huayuan Tu <tuhuayuan@gmail.com>

RUN mkdir -p /opt/bin 
RUN git clone https://github.com/coreos/flannel.git; cd flannel; git checkout v0.5.5;\
	./build; mv ./bin/flanneld /opt/bin; cd ..; rm -rf flannel;

CMD ["/bin/sh" "-c" "/opt/bin/flanneld"]
