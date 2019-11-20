//= require rails-ujs
//= require_tree .
// document.querySelector('#view-dropdown').addEventListener('click', () => {
//   document.querySelector('.dropdown-card').classList.toggle('active')
// })

// document.querySelectorAll('.yellow-btn').addEventListener("click", () => {
//   document.querySelectorAll('.student-card-container').classList.toggle('active')
// })

// NEXT FEATURE
// document.querySelectorAll('.yellow-btn').forEach( (button) => {
//   button.addEventListener("click", () => {
//     document.querySelectorAll('.student-card-container').forEach( (card) => {
//       card.classList.toggle('active')
//     })
//   });
// })


document.querySelectorAll('.student-card-container').forEach( (card) => {
  button = card.querySelector('.yellow-btn')
  button.addEventListener("click", () => {
    card.classList.toggle('active')
  });
})
