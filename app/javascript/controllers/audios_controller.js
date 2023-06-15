import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="audios"
export default class extends Controller {

  play() {
    // console.log("dataset", this.element.dataset);
    if (this.audio) {
      this.audio.pause();
      this.audio = null;
  } else {
      this.audio = new Audio(this.element.dataset.path);
      this.audio.play();
    }
  }
}
