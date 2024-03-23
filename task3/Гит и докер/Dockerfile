# Используем легковесный базовый образ, например, Alpine
FROM alpine:latest
RUN apk add --no-cache sqlite
WORKDIR /db
COPY ./sqlite.db /db/
CMD ["sh", "-c", "tail -f /dev/null"]