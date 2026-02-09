ARG IMAGE_MAJOR_VERSION=43

# Applications specifically built for usage in (wayland) window managers setups
FROM fedora:${IMAGE_MAJOR_VERSION} as wmutils

COPY files/scripts/build-scripts /tmp/build-scripts

RUN chmod +x /tmp/build-scripts/wmutils.sh && \
    /tmp/build-scripts/wmutils.sh

# Finalize container build
FROM fedora:${IMAGE_MAJOR_VERSION}

RUN mkdir -p /artifacts/usr
RUN mkdir -p /artifacts/etc

COPY --from=wwm /artifacts/wmutils-built/usr /artifacts/usr