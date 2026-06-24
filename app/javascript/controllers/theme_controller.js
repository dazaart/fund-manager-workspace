import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  toggle() {
    document.documentElement.classList.toggle("dark")

    const isDark = document.documentElement.classList.contains("dark")
    localStorage.setItem("theme", isDark ? "dark" : "light")
  }
}