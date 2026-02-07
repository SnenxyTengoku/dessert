ARG IMAGE_MAJOR_VERSION=43

# KDE/Kwin Extras/Addons
FROM fedora:${IMAGE_MAJOR_VERSION} as kde-extras

COPY files/scripts/build-scripts /tmp/build-scripts

RUN chmod +x /tmp/build-scripts/kde-extras.sh && \
    /tmp/build-scripts/kde-extras.sh

# Finalize container build
FROM fedora:${IMAGE_MAJOR_VERSION}

RUN mkdir -p /artifacts/usr
RUN mkdir -p /artifacts/etc

COPY --from=kde-extras /artifacts/kde-extras-built/usr /artifacts/usr