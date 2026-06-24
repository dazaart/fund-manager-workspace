import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["submit"]
  connect() {
    this.initialValue = this.formValue()
    this.update()
  }

  update() {
    const isDirty = this.formValue() !== this.initialValue

    this.submitTarget.disabled = !isDirty
    this.submitTarget.classList.toggle("opacity-50", !isDirty)
    this.submitTarget.classList.toggle("cursor-not-allowed", !isDirty)
    this.submitTarget.classList.toggle("cursor-pointer", isDirty)
  }

  formValue() {
    return new URLSearchParams(new FormData(this.element)).toString()
  }
}