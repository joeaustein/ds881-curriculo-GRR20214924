FROM node:18-alpine

WORKDIR /app

# Install a simple live-reload static server
RUN npm install -g live-server

# Expose port required by the task
EXPOSE 8080

# By default serve the current working directory
CMD ["live-server", "--port=8080", "--host=0.0.0.0", "--no-browser", "--watch=."]
