FROM mcr.microsoft.com/playwright:v1.52.0 AS base

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY . .

# Install only once and cache this layer
RUN npx playwright install --with-deps

CMD ["npx", "playwright", "test", "--project=Chromium", "--project=Firefox", "--project=WebKit", "--workers=3"]

