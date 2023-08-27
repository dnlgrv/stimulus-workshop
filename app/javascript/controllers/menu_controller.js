import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from "stimulus-use"

// Connects to data-controller="menu"
export default class extends Controller {
  connect() {
    useClickOutside(this)
  }

  close() {
    this.element.removeAttribute("open")
  }
}
