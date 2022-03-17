---
to: <%= cwd %>/<%= project_name %>/tsconfig.json
---

{
  "compilerOptions": {
    "target": "es5",
    "lib": [
      "es6",
      "dom"
    ],
    "allowJs": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "importHelpers": true,
    "forceConsistentCasingInFileNames": true,
    "resolveJsonModule": true,
    "types": ["cypress"]
  },
  "include": [
    "node_modules/cypress",
    "cypress"
  ]
}