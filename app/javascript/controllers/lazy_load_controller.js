import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lazy-load"
export default class extends Controller {
  static targets = ["frame"]
  static values = {
    url: String
  }

  load() {
    if (!this.frameTarget.getAttribute("complete")) {
      this.frameTarget.src = this.urlValue
      this.frameTarget.reload()
    }
  }
}
