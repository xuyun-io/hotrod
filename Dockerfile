FROM scratch
EXPOSE 8080 8081 8082 8083
COPY /bin/hotrod /go/bin/
ENTRYPOINT ["/go/bin/hotrod"]
CMD ["all"]
