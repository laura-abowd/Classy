import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  // $('.student-two-select').each(function(index, selectInput) {
  //   $(selectInput).select2({
  //     placeholder: "Do not place with"
  //   })
  // })
  $('.student-two-select').select2();
};

export { initSelect2 };
