---
to: <%= cwd %>/<%= project_name %>/Dockerfile
---

FROM cypress/base:<%= cypress_base_image_tag %>

RUN curl -o /usr/local/bin/waitforit -sSL https://github.com/maxcnunes/waitforit/releases/download/v2.4.1/waitforit-linux_amd64 && \
    chmod +x /usr/local/bin/waitforit

WORKDIR /e2e/

RUN mkdir -p /e2e/cypress/{screenshots,videos} \
    && chown -R node:node /e2e/cypress
RUN chown node:node /e2e/

USER node

COPY --chown=node:node package.json yarn.lock ./

RUN yarn install --frozen-lockfile --prod

COPY --chown=node:node ./ ./

# to avoid running that everytime before the tests
RUN npx cypress verify 