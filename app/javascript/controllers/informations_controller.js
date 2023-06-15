import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="informations"
export default class extends Controller {
  static targets = ["info_1", "info_2", "btn_1", "btn_2"]

  connect() {

    console.log("connect")
    console.log(this.targets)
  }



  first(event) {

    this.info_1Target.classList.remove("d-none")
    this.info_2Target.classList.add("d-none")

    this.btn_1Target.classList.add("info-active")
    this.btn_2Target.classList.remove("info-active")
  }

  second(event) {

  this.info_1Target.classList.add("d-none")
  this.info_2Target.classList.remove("d-none")

  this.btn_1Target.classList.remove("info-active")
  this.btn_2Target.classList.add("info-active")

  }

}
