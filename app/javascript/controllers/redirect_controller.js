import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    url: String,
  }

  connect() {
    setTimeout(() => {
      window.location.href = this.urlValue
    }, 1200)
  }
}