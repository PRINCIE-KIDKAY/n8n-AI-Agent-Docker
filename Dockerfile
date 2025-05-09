# Use the official n8n image as a base
FROM docker.n8n.io/n8nio/n8n

# Optionally install extra tools (uncomment if needed)
# RUN apt-get update && apt-get install -y nano

# Set custom environment variables (you can add more based on your needs)
ENV N8N_CUSTOM_ENV=true
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# Expose the ports that n8n will run on
EXPOSE 5678
EXPOSE 80

# Command to run n8n
CMD ["n8n"]
