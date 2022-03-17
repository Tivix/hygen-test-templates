---
to: <%= cwd %>/<%= project_name %>/package.json
sh: "cd <%= project_name %> &&
  yarn add -D @tivix/prettier-config @typescript-eslint/eslint-plugin eslint eslint-config-airbnb-typescript eslint-config-prettier eslint-plugin-cypress eslint-plugin-import husky lint-staged prettier &&
  yarn add cypress typescript @typescript-eslint/parser cypress-terminal-report"
---

{
  "name": "<%= project_name %>",
  "version": "1.0.0",
  "private": true,
    "scripts": {
    "cypress:open": "yarn cypress open",
    "cypress:run": "yarn cypress run",
    "lint": "eslint 'cypress/**/*.{js,ts,tsx}'",
    "pretty": "prettier --write \"cypress/**/*.{ts,js,jsx,json}\"",
    "prepare": "cd .. && husky install <%= project_name %>/.husky"
  },
  "husky": {
    "hooks": {
      "pre-commit": "lint-staged"
    }
  },
  "lint-staged": {
    "./cypress/**/*.{js,ts}": [
      "eslint --fix --max-warnings 0"
    ],
    "./**/*.{json,md,yml}": [
      "prettier --write"
    ]
  }
}