FROM docker.n8n.io/n8nio/n8n

# Optionally install extra tools
# RUN apt-get update && apt-get install -y nano

ENV N8N_CUSTOM_ENV=true

CMD ["n8n"]
