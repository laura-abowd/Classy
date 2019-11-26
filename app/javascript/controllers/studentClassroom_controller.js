import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['myText']

  connect() {
    console.log(this.contentTarget);
  }
  // changeText() {
  //   this.myTextTarget.innerText = "Yeahh! Stimulus!"
  // }
    studentDragHandler(event) {
    event.dataTransfer.setData("text/plain", event.target.id);
    event.dropEffect = "move";
  }

  student_dragstart_handler(event) {
  console.log("dragStart");
  event.dataTransfer.setData("text", event.target.id);
  }
}


