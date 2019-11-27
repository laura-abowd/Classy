import "bootstrap";
import Rails from '@rails/ujs';
// import { submitOnEvent } from '../components/submitOnEvent.js';
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
// import { initSortable } from '../plugins/init_sortable';

Rails.start();

window.$ = require('jquery')

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
// submitOnEvent();

