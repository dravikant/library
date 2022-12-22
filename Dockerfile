FROM  golang:1.19.4

WORKDIR /home

COPY ./pkg /home/

RUN cd /home && go build -o library

CMD ["/home/library"]