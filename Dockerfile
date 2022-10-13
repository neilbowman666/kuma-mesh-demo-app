FROM busybox

ADD bin/demo /app/

RUN chmod 755 /app/demo

EXPOSE 8080

WORKDIR /app/

#ENTRYPOINT ["/usr/local/bin/demo"]
CMD ./demo

