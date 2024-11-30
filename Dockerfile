FROM migrate/migrate:4 as migrate

FROM debian:12-slim as final

COPY --from=migrate /usr/local/bin/migrate /usr/local/bin/migrate

COPY /migrations /migrations
COPY /scripts /scripts

ENTRYPOINT [ "/scripts/entrypoint.sh" ]