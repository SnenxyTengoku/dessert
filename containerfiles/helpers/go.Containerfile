ARG IMAGE_MAJOR_VERSION=43

# Packages built with go
FROM fedora:${IMAGE_MAJOR_VERSION} as go

COPY files/scripts/build-scripts /tmp/build-scripts

RUN chmod +x /tmp/build-scripts/go.sh && \
    /tmp/build-scripts/go.sh

# Finalize container build
FROM fedora:${IMAGE_MAJOR_VERSION}

RUN mkdir -p /artifacts/usr
RUN mkdir -p /artifacts/etc

COPY --from=go /artifacts/go-built/usr /artifacts/usr