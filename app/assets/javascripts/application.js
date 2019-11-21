//= require rails-ujs
//= require_tree .

document.querySelectorAll('.classy-sticky-button .yellow-btn').forEach( (button) => {
  button.addEventListener("click", () => {
    document.querySelectorAll('.student-card-container').forEach( (card) => {
      card.classList.toggle('active')
    })
  });
})


document.querySelectorAll('.student-card-container').forEach( (card) => {
  button = card.querySelector('.fa-chevron-down');
  button.addEventListener("click", () => {
    card.classList.toggle('active')
  });
})


