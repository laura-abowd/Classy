import Rails from '@rails/ujs';

var getClosest = function ( elem, selector ) {

  // Element.matches() polyfill
  if (!Element.prototype.matches) {
    Element.prototype.matches =
      Element.prototype.matchesSelector ||
      Element.prototype.mozMatchesSelector ||
      Element.prototype.msMatchesSelector ||
      Element.prototype.oMatchesSelector ||
      Element.prototype.webkitMatchesSelector ||
      function(s) {
        var matches = (this.document || this.ownerDocument).querySelectorAll(s),
          i = matches.length;
        while (--i >= 0 && matches.item(i) !== this) {}
        return i > -1;
      };
  }

  // Get closest match
  for ( ; elem && elem !== document; elem = elem.parentNode ) {
    if ( elem.matches( selector ) ) return elem;
  }

  return null;

};

window.submitOnEvent = function () {

  document.querySelectorAll('.checkform').forEach( (form) => {
    form.addEventListener('change', () => Rails.fire(form, 'submit'))
  })

  document.querySelectorAll('.notesform').forEach( (form) => {
    form.addEventListener('focusout', () => Rails.fire(form, 'submit'))
  })

  // document.querySelectorAll('#dnpselect').forEach( (input) => {
  //   input.addEventListener('change', () => Rails.fire(form, 'submit'))
  // })

  // $('.student-two-select').on('change', function (e) {
  //   const form = getClosest(e.currentTarget, 'form')
  //   Rails.fire(form, 'submit')
  // });

  document.querySelectorAll('.container-student-cards .dnp-form').forEach((form) => {
    // console.log(form)
    // const selectInput = form.querySelector('.student-two-select')
    // console.log(selectInput)
    // selectInput.addEventListener('change', (event) => {
    //   console.log('form changed')
    //   Rails.fire(form, 'submit')
    // })

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

const submitOnEvent = window.submitOnEvent


export { submitOnEvent };
