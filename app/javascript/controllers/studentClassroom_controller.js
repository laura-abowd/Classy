import { Controller } from "stimulus"

export default class extends Controller {
  // static target = ['myText']
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
    // event.preventDefault();
    // event.dataTransfer.dropEffect = "move";
  }

  student_dragover_handler(event) {
    console.log("drag over");
    event.preventDefault();
  }
}
