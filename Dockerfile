#FROM scratch
FROM golang:1.12.10
EXPOSE 8080 8081 8082 8083
COPY bin/hotrod /hotrod
ENTRYPOINT ["/hotrod"]
CMD ["all"]

#FROM golang:1.12.10
#ARG  APP_ROOT
#WORKDIR ${APP_ROOT}
#COPY ./ ${APP_ROOT}
#RUN mkdir -p bin
#RUN go build -ldflags="-s -w" -o bin/hotrod main.go 

#FROM alpine:latest  
#ARG APP_ROOT
#COPY --from=0 ${APP_ROOT}/bin/hotrod /
#EXPOSE 8080 8081 8082 8083
#ENTRYPOINT ["/hotrod"]
#CMD ["all"]
