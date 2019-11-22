const submitOnEvent = () => {

  document.querySelectorAll('.check_form').forEach( (form) => {
    form.addEventListener('change', () => form.submit())
  })

  document.querySelectorAll('.text_form').forEach( (form) => {
    form.addEventListener('blur', () => form.submit())
  })

document.querySelectorAll('.select_form').forEach( (form) => {
    form.addEventListener('change', () => form.submit())
  })
}

export { submitOnEvent };
