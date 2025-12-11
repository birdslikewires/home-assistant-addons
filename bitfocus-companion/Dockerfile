ARG COMP_VER=4.2.0

FROM ghcr.io/bitfocus/companion/companion:v${COMP_VER} AS base
FROM base
USER root

# Rebuild native modules for the container architecture
RUN cd /app && npm rebuild

# Copy the startup script
COPY run.sh /run_companion.sh
RUN chmod +x /run_companion.sh

# Change the entry point
ENTRYPOINT ["/run_companion.sh"]
