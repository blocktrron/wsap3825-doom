FROM debian:bookworm

RUN apt-get update && \
		apt-get install -y build-essential wget curl file unzip rsync bc cpio zstd
RUN apt-get clean -y
RUN mkdir /buildroot

COPY buildroot-build.sh /buildroot/buildroot-build.sh

VOLUME /buildroot
WORKDIR /buildroot

ENTRYPOINT ["/buildroot/buildroot-build.sh"]
