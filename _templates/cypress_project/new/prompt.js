module.exports = [
    {
      type: 'input',
      name: 'project_name',
      message: 'Project name:',
      hint: 'e.g. \'cypress-testing-service\''
    },
    {
      type: 'input',
      name: 'cypress_base_image_tag',
      message: 'Docker Hub cypress/base image tag:',
      hint: 'https://hub.docker.com/r/cypress/base/tags'
    },
    {
      type: 'input',
      name: 'base_url',
      message: 'Base URL:',
      hint: 'e.g. \'http://localhost:8080\''
    },
  ]