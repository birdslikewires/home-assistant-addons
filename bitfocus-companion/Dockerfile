ARG BUILD_ARCH=aarch64

# Select the correct image based on the architecture
FROM ghcr.io/bitfocus/companion/companion:4.0.2-8076-stable-7bdc01f6d9@sha256:7ac9807bf5901085cb867f5902870c9e61e3baa8e64bbb022b43f39be76fb656 AS aarch64_image
FROM ghcr.io/bitfocus/companion/companion:4.0.2-8076-stable-7bdc01f6d9@sha256:1a08551e0f5de4c79812ae7a46e1b85578a438f53ba1db46280739badd842336 AS amd64_image

# The actual image used
FROM ${BUILD_ARCH}_image

USER root

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
