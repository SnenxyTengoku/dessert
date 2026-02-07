ARG IMAGE_MAJOR_VERSION=43

# Packages built with cargo/rust
FROM fedora:${IMAGE_MAJOR_VERSION} as cargo

COPY files/scripts/build-scripts /tmp/build-scripts

RUN chmod +x /tmp/build-scripts/cargo.sh && \
    /tmp/build-scripts/cargo.sh

# Finalize container build
FROM fedora:${IMAGE_MAJOR_VERSION}

RUN mkdir -p /artifacts/usr
RUN mkdir -p /artifacts/etc

COPY --from=cargo /artifacts/cargo-built/usr /artifacts/usr