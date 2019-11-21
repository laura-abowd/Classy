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
  button = card.querySelector('.fa-chevron-down');
  button.addEventListener("click", () => {
    card.classList.toggle('active')
  });
})


// const checkAll = document.querySelectorAll('.checkbox-icon i');
// checkAll.forEach( (button) => {
//     button.addEventListener("click", (event) => {
//         event.currentTarget.classList.toggle("active");
//     });
//   if (button.classList.contains('active')) {

//   }

// })


// if (document.querySelector('.checkbox-icon i').classList.contains('active')) {
//   document.getElementById('student_esl').click();
// } else { console.log('no') };

// if (document.querySelector('.checkbox-icon i').classList.contains('active')) {
//   document.getElementById('student_gifted_talented').click();
// } else { console.log('no') };

// if (document.querySelector('.checkbox-icon i').classList.contains('active')) {
//   document.getElementById('student_special_education').click();
// } else { console.log('no') };

// if (document.querySelector('.checkbox-icon i').classList.contains('active')) {
//   document.getElementById('student_medical_alert').click();
// } else { console.log('no') };

