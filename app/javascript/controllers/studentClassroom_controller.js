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
  // console.log("I'm dragging!");
    event.dataTransfer.setData("text/plain", event.target.id);
    event.dropEffect = "move";
  }

}



 // playerDragHandler(event) {
 //    // console.log("I'm dragging!");
 //    // event.preventDefault();
 //    event.dataTransfer.setData("text/plain", event.target.id);
 //    event.dropEffect = "move";
 //  }
