module.exports = [
    {
      type: 'input',
      name: 'file_name',
      message: "What's your file name?"
    },
    {
      type: 'input',
      name: 'url',
      message: "What's your url?"
    },
    {
      type: 'input',
      name: 'method',
      message: "What's your method ?",
      hint: "[GET, POST, PUT, DELETE etc.]"
    },
    {
      type: 'input',
      name: 'is_form',
      message: "Is that a form ? ",
      hint: "[true, false]"
    }
  ]