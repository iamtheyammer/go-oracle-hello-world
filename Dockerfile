# Build the image on oraclelinux (same as base for instantclient, but not slim-- you can't install golang on slim)
FROM oraclelinux:7 as build
RUN yum install -y oracle-golang-release-el7 && \
	yum install -y golang unzip
COPY . /app
WORKDIR /app
RUN go build -o /main main.go

FROM store/oracle/database-instantclient:12.2.0.1
COPY --from=build /main /main
ENTRYPOINT ["/main"]