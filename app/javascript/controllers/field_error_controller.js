import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  clear(event) {
    event.target.classList.remove("border-red-300")
    event.target.classList.remove("bg-red-50")
  }
}