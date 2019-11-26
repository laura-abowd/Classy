import { Controller } from "stimulus";
import Rails from '@rails/ujs';

export default class extends Controller {
  static target = ['container']

  student_dragstart_handler(event) {
    console.log("dragStart");
    event.dataTransfer.setData("text", event.target.id);
    event.dataTransfer.dropEffect = "move";
  }

// an item is dropped on a valid drop target
  student_drop_handler(event) {
    console.log("dropzone");
    const studentId = event.dataTransfer.getData("text/plain");
    const container = event.currentTarget;
    const studentCard = document.getElementById(studentId);
    container.appendChild(studentCard)

    // select enrollment form in student card
    const enrollmentForm = studentCard.querySelector('form');

    // Update classroom ID with dropzone classroom
    enrollmentForm.querySelector('#classroom_enrollment_classroom_id').value = container.dataset.classroomId


    // submit that form
    Rails.fire(enrollmentForm, 'submit')
  }

  student_dragover_handler(event) {
    console.log("drag over");
    event.preventDefault();
  }
}
