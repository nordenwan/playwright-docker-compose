FROM mcr.microsoft.com/playwright:v1.52.0 AS base

WORKDIR /app

# Copy package manifests first for better Docker layer caching
COPY package.json .
COPY package-lock.json .

# Install all dependencies (including @playwright/test from package.json)
RUN npm ci

# Copy the rest of the code (e.g., tests, config)
COPY . .

# Install only once and cache this layer
RUN npx playwright install --with-deps

# Run tests across all browsers in parallel
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
