---
to: <%= cwd %>/<%= project_name %>/.eslint.js
---

module.exports = {
  root: true,
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint', 'import'],
  extends: [
    'airbnb-typescript/base',
    'plugin:cypress/recommended',
    'prettier',
    // 'prettier/@typescript-eslint',
  ],
  rules: {
    indent: ['error', 2],
    '@typescript-eslint/indent': ['error', 2],
    semi: ['error', 'always'],
  },
  parserOptions: {
    project: './tsconfig.json',
  }
};