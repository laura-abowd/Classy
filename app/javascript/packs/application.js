import "bootstrap";
import 'select2/dist/css/select2.css';
import Rails from '@rails/ujs';
import { submitOnEvent } from '../components/submitOnEvent.js';

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
// import { initSortable } from '../plugins/init_sortable';


import { initSelect2 } from '../components/init_select2.js';


Rails.start();



initSelect2();

// document.querySelectorAll('.student_two_select').forEach((element) => {
//   initSelect2(element);
// })
submitOnEvent();
// const list = document.querySelector('#results');



const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
