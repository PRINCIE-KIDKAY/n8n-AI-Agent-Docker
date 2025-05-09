# Use the official n8n image as a base
FROM n8nio/n8n:latest

# Set environment variables (optional here since they are already in docker-compose)
# ENV DB_TYPE=postgresdb ...

# Create a working directory (optional, depends on whether you mount volumes inside container)
WORKDIR /home/node/

# Optionally copy custom files (only if you have plugins, workflows, credentials to pre-load)
# COPY ./my-custom-folder /home/node/.n8n

# Set permissions (optional but recommended if you're copying anything in)
# RUN chown -R node:node /home/node/.n8n

# Switch to non-root user (n8n runs as `node`)
EXPOSE 5678
EXPOSE 80

USER node

# By default, the image CMD is `n8n`, so no need to override unless needed
# The n8n-worker service overrides the command with `worker` via docker-compose
