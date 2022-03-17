---
to: <%= cwd %>/<%= project_name %>/.husky/pre-commit
sh: "chmod +x <%= project_name %>/.husky/pre-commit"
---

#!/bin/sh
. "$(dirname "$0")/_/husky.sh"

cd <%= project_name %>
yarn lint-staged