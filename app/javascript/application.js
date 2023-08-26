// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import { StreamActions } from "@hotwired/turbo"

StreamActions.clearInput = function () {
  this.targetElements.forEach((e) => {
    e.value = ""
  })
}
