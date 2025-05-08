// tests/sample.test.js
const { test, expect } = require('@playwright/test');

test('basic test', async ({ page }) => {
  await page.goto('https://playwright.dev');
  const title = await page.textContent('h1');
  expect(title).toContain('Playwright');
});

