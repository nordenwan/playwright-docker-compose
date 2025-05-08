#!/bin/bash
set -e

# Run Playwright tests across browsers with 3 workers
npx playwright test --project=Chromium --project=Firefox --project=WebKit --workers=3

# Optionally open report (not useful in headless CI, but good locally)
npx playwright show-report

