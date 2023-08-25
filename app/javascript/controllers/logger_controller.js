import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="logger"
export default class extends Controller {
  static targets = ["output"]

  log(event) {
    this.outputTarget.value += `${event.detail.message}\n`
  }
}
