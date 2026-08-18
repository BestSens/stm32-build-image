FROM alpine:3.24
RUN apk add --no-cache \
	gcc-arm-none-eabi \
	g++-arm-none-eabi \
	gdb-multiarch \
	lz4 \
	python3 \
	py3-ecdsa \
	git \
	clang-extra-tools \
	samurai \
	ccache \
	cmake \
	bash \
	ca-certificates \
	curl \
	openssh-client \
	patch \
	tar

COPY bestsens-SERVER-CA.crt /usr/local/share/ca-certificates/bestsens-SERVER-CA.crt
COPY metax-root-ca-v2.crt /usr/local/share/ca-certificates/metax-root-ca-v2.crt
RUN update-ca-certificates