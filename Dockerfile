FROM ocaml/opam:alpine as build

# Install system dependencies
RUN sudo apk add --update libev-dev openssl-dev

WORKDIR /home/opam

# Install dependencies
ADD poc-01.opam poc-01.opam
RUN opam install . --deps-only

# Build project
ADD . .
RUN opam exec -- dune build



FROM alpine:3.18.4 as run

RUN apk add --update libev

COPY --from=build /home/opam/_build/default/src/server.exe /bin/server

ENTRYPOINT /bin/server
