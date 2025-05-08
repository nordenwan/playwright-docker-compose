Create the package.json 
{
  "name": "playwright-docker-js",
  "version": "1.0.0",
  "scripts": {
    "test": "npx playwright test",
    "report": "npx playwright show-report"
  },
  "devDependencies": {
    "@playwright/test": "^1.52.0"
  }
}

Then run this locally to generate a package-lock.json:

npm install


docker-compose build --no-cache        # Only when you *need* a clean slate
docker-compose up --build              # Caches will be reused unless dependencies change
docker-compose up --build
