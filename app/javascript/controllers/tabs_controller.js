import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tab", "section"]
  static values = {
    selectedIndex: { type: Number, default: 0 }
  }

  select(event) {
    const { index } = event.params
    this.selectedIndexValue = index
  }

  selectedIndexValueChanged(newIndex, oldIndex) {
    if (oldIndex !== undefined) {
      this.deselectTab(oldIndex)
    }

    if (newIndex !== undefined) {
      this.selectTab(newIndex)
    }
  }

  selectTab(index) {
    this.tabTargets[index].classList.add("bg-white")
    this.sectionTargets[index].classList.remove("hidden")
    this.sectionTargets[index].classList.add("flex")
  }

  deselectTab(index) {
    this.tabTargets[index].classList.remove("bg-white")
    this.sectionTargets[index].classList.add("hidden")
    this.sectionTargets[index].classList.remove("flex")
  }
}
