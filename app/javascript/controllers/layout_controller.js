import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static classes = ["hide"]
  static targets = ["instructions"]

  toggleInstructions() {
    this.instructionsTarget.classList.toggle(this.hideClass)
  }
}
