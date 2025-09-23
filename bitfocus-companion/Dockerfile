ARG BUILD_ARCH=aarch64

# Select the correct image based on the architecture
FROM ghcr.io/bitfocus/companion/companion:4.1.0-8434-stable-094ffba324@sha256:74c2b190dcda336784137de51b87840bec01b2ccac5d689ed0bdec97c4db6358 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.1.0-8434-stable-094ffba324@sha256:115384cf0a104f121bc8120bac0c7e3a9ba610c55115d3534cdf5a0ed9d3bc29 AS amd64_image

# The actual image used
FROM ${BUILD_ARCH}_image

USER root

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
