FROM alpine:edge

RUN apk add --update python2 python2-dev py2-pip py2-lxml sqlite gcc musl-dev

RUN pip install --upgrade pip && \
	pip install requests chardet gevent

COPY . /opt/IPProxyPool
WORKDIR /opt/IPProxyPool

EXPOSE 8080

CMD ["python", "IPProxys.py"]