FROM golang:1.9.6 AS hehehe

WORKDIR /app

COPY fcr.go .

RUN go build -o fcr fcr.go

FROM scratch

COPY --from=hehehe /app/fcr ./fcr

CMD ["./fcr"]