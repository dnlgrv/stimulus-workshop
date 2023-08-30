import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from "stimulus-use"

// Connects to data-controller="nav"
export default class extends Controller {
  static targets = ["toggle"]

  connect() {
    useClickOutside(this)
  }

  close() {
    this.toggleTarget.checked = false
  }
}
