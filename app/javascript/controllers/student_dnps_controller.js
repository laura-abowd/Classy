import { Controller } from "stimulus"
import $ from 'jquery';
import 'select2/dist/css/select2.css';
import 'select2';
import Rails from '@rails/ujs';

export default class extends Controller {
  static targets = ['select']

  connect() {
    $(this.selectTarget).select2({
    });

    $(this.selectTarget).on('change.select', (e) => {
      Rails.fire(e.target.form, 'submit');
    });
  }
}
