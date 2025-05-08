npm init -y

npm install --save-dev @playwright/test

npx playwright install


docker-compose build --no-cache        # Only when you *need* a clean slate
docker-compose up --build              # Caches will be reused unless dependencies change

