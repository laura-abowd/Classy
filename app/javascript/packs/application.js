import "bootstrap";
import 'select2/dist/css/select2.css';
import Rails from '@rails/ujs';
import { submitOnEvent } from '../components/submitOnEvent.js';
import { initSelect2 } from '../components/init_select2.js';


// var Typeahead = require('typeahead');

Rails.start();

// When the user scrolls the page, execute myFunction
window.onscroll = function() {myFunction()};

// Get the header
var header = document.getElementById("student-header");

// Get the offset position of the navbar
var sticky = header.offsetTop;

// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}

initSelect2();

// document.querySelectorAll('.student_two_select').forEach((element) => {
//   initSelect2(element);
// })
submitOnEvent();
