ARG COMP_VER=4.2.0

FROM ghcr.io/bitfocus/companion/companion:v${COMP_VER}

USER root

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

USER companion

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
