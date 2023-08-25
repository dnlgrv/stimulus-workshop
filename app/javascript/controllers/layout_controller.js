import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static classes = ["active", "hide"]
  static targets = ["instructions"]

  toggleInstructions(event) {
    this.instructionsTarget.classList.toggle(this.hideClass)

    if (this.instructionsTarget.classList.contains(this.hideClass)) {
      event.currentTarget.classList.remove(...this.activeClasses)
    } else {
      event.currentTarget.classList.add(...this.activeClasses)
    }
  }
}
