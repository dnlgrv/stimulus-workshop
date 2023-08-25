import { Controller } from "@hotwired/stimulus"
import confetti from "canvas-confetti"

export default class extends Controller {
  celebrate() {
    confetti({
      particleCount: 100,
      startVelocity: 30,
      spread: 360,
      origin: { x: Math.random(), y: Math.random() - 0.2 }
    })
  }
}
