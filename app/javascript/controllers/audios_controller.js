import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="audios"
export default class extends Controller {

  connect() {
    console.log("connect")
  }

  play(event) {
    console.log("dataset",this.element.dataset);
    const audio = new Audio(this.element.dataset.path)
    audio.play();
  }
}
