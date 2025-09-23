ARG BUILD_ARCH=aarch64

# Select the correct image based on the architecture
FROM ghcr.io/bitfocus/companion/companion:4.1.1-8447-stable-d48898e1d9@sha256:6759aecc6c8f1b93d6e28ad4b3e54be9c3e19005ebc3302f1464ffe5471cc300 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.1.1-8447-stable-d48898e1d9@sha256:6398ab4002c1fc06ad46922445db1ed2dc065e3e052992ed282523e4e95e03d6 AS amd64_image

# The actual image used
FROM ${BUILD_ARCH}_image

USER root

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
