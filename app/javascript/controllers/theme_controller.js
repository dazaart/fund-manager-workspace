import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["moon", "sun"]

 connect() {
  this.updateIcon()
 }

 toggle() {
    document.documentElement.classList.toggle("dark")

    const isDark =
      document.documentElement.classList.contains("dark")

    localStorage.setItem(
      "theme",
      isDark ? "dark" : "light"
    )

    this.updateIcon()
  }

  updateIcon() {
    const isDark =
      document.documentElement.classList.contains("dark")

    this.moonTarget.classList.toggle("hidden", isDark)
    this.sunTarget.classList.toggle("hidden", !isDark)
}
}