//= require_tree .

// if we push show all, look through each card and if it doesn't have active1, add it


// const showAllButton = document.querySelector('.show-notes-btn .expand-view')

// showAllButton.addEventListener("click", () => {
//     document.querySelectorAll('.student-card-container').forEach( (card) => {
//       if (showAllButton.classList.contains('all-closed')) {
//         card.classList.remove('active1');
//         showAllButton.innerText = "<i class='far fa-angle-double-down'></i>"
//       }
//       else {
//         console.log('firing')
//         card.classList.add('active1')
//         showAllButton.innerText = "<i class='far fa-angle-double-up'></i>"
//       }
//     });
//     showAllButton.classList.toggle('all-closed');
// });

const showAllButton = document.querySelector('.show-notes-btn .expand-view')

showAllButton.addEventListener("click", () => {
    document.querySelectorAll('.student-card-container').forEach( (card) => {
      if (showAllButton.classList.contains('all-closed')) {
        card.classList.remove('active1');
        showAllButton.innerHTML = "<i class='far fa-angle-double-down'></i>"
      }
      else {
        console.log('firing')
        card.classList.add('active1')
        showAllButton.innerHTML = "<i class='far fa-angle-double-up'></i>"
      }
    });
    showAllButton.classList.toggle('all-closed');
});


document.querySelectorAll('.student-card-container').forEach( (card) => {
  button = card.querySelector('.fa-chevron-down');
  button.addEventListener("click", () => {

    card.classList.toggle('active1')
  });
})


