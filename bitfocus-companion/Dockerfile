ARG COMP_VER=4.1.5

FROM ghcr.io/bitfocus/companion/companion:v${COMP_VER}

USER root

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
