import Rails from '@rails/ujs';

const submitOnEvent = () => {

  document.querySelectorAll('.checkform').forEach( (form) => {
    form.addEventListener('change', () => Rails.fire(form, 'submit'))
  })

  document.querySelectorAll('.notesform').forEach( (form) => {
    form.addEventListener('focusout', () => Rails.fire(form, 'submit'))
  })

document.querySelectorAll('.selectdnp').forEach( (form) => {
    form.addEventListener('change', () => Rails.fire(form, 'submit'))
  })

document.querySelectorAll('.teacherform').forEach( (form) => {
    form.addEventListener('change', () => Rails.fire(form, 'submit'))
  })
}

export { submitOnEvent };
