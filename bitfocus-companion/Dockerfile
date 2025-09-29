ARG BUILD_ARCH=aarch64

FROM ghcr.io/bitfocus/companion/companion:4.0.3-8089-stable-b2774d6045@sha256:a48989907ba07ed4acc3a6ee291745ff0162bc75c24aaa069addf03f89b037cc AS aarch64_image
FROM ${BUILD_ARCH}_image

USER root

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
