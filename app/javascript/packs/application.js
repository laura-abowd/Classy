import "bootstrap";
import Rails from '@rails/ujs';
import { submitOnEvent } from '../components/submitOnEvent.js';
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
// import { initSortable } from '../plugins/init_sortable';

Rails.start();



submitOnEvent();
// const list = document.querySelector('#results');
// initSortable();
// myFunction();


const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
