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

    container.prepend(studentCard)

    // prependchild
    // insertbefore

    // select enrollment form in student card
    const enrollmentForm = studentCard.querySelector('form');

    // Update classroom ID with dropzone classroom
    enrollmentForm.querySelector('#classroom_enrollment_classroom_id').value = container.dataset.classroomId

    // Change the teacher class
    // let studentClass = studentCard.className
    // const nextStudentClass = container.dataset/.*-(.)/.classroomId
    // // console.log(studentClass.match(/(.*-)(.)/)[1] + nextStudentClass)
    // studentCard.className = studentClass.match(/(.*-)(.)/)[1] + nextStudentClass

    // submit that form
    Rails.fire(enrollmentForm, 'submit')



    // Reload the student number
    // 0. Create an dynamic and unique id of teacher in the HTML

    // 1. Get elements of the student number of the each teacher
    // let studentNumberOfTeachers = document.querySelectorAll('.ajax-teacher');
    // let teacherList = []
    // studentNumberOfTeachers.forEach((studentNumberOfTeacher) => {
    //   teacherList.push(studentNumberOfTeacher.id.match()[1])
    // })
    // // console.log(teacherList)

    // // 2. Get the latest student number by counting the number of the DOM
    // let studentNumbers = []
    // teacherList.forEach((teacher) => {
    //   studentNumbers.push(document.querySelectorAll(`.teacher-${teacher}`).length)
    // })
    // console.log(studentNumbers)

    // 3. Overwrite the number of student with new studentNumbers

  }

  student_dragover_handler(event) {
    console.log("drag over");
    event.preventDefault();
  }
}
