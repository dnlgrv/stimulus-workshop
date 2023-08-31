// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import { StreamActions } from "@hotwired/turbo"

StreamActions.clear = function () {
  this.targetElements.forEach(el => el.value = "")
}
