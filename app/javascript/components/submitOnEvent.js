import Rails from '@rails/ujs';

const submitOnEvent = () => {

  document.querySelectorAll('.checkform').forEach( (form) => {
    form.addEventListener('change', () => Rails.fire(form, 'submit'))
  })

  document.querySelectorAll('.notesform').forEach( (form) => {
    form.addEventListener('focusout', () => Rails.fire(form, 'submit'))
  })

  // document.querySelectorAll('#dnpselect').forEach( (input) => {
  //   input.addEventListener('change', () => Rails.fire(form, 'submit'))
  // })

  $('.student-two-select').on('change', function (e) {
    $('.dnp-form').submit();
  });

  document.querySelectorAll('.dnp-form').forEach((form) => {
    form.querySelector('.student-two-select').addEventListener('change', (event) => {
      form.submit()
    })

    form.querySelector('.dnp-badges').addEventListener('click', (event) => {
      const element = form.querySelector('.student-two-select');
      var event;
      event = document.createEvent('MouseEvents');
      event.initMouseEvent('mousedown', true, true, window);
      element.dispatchEvent(event);
    })
  })

  document.querySelectorAll('.teacherform').forEach( (form) => {
    form.addEventListener('change', () => Rails.fire(form, 'submit'))
  })

}

export { submitOnEvent };
