FROM debian:stable as build

WORKDIR /deepin-docker-build

ADD . .

RUN ./build.sh

FROM scratch

COPY --from=build /beige-rootfs /

ADD files /files/

RUN /files/install.sh

CMD ["sh"]

