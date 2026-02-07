ARG IMAGE_MAJOR_VERSION=43

# Catppuccin
FROM fedora:${IMAGE_MAJOR_VERSION} as catppuccin

COPY files/scripts/build-scripts /tmp/build-scripts

RUN chmod +x /tmp/build-scripts/catppuccin/gtk.sh && \
    /tmp/build-scripts/catppuccin/gtk.sh

# Finalize container build
FROM fedora:${IMAGE_MAJOR_VERSION}

RUN mkdir -p /artifacts/usr
RUN mkdir -p /artifacts/etc

COPY --from=catppuccin /artifacts/catppuccin-gtk/usr /artifacts/usr
COPY --from=catppuccin /artifacts/catppuccin-gtk/etc /artifacts/etc