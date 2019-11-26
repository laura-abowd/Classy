import $ from 'jquery';
import 'select2';

window.initSelect2 = function () {
  $('.student-two-select').select2();
};

const initSelect2 = window.initSelect2

export { initSelect2 };
