import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["dialog", "turboFrame"];

  connect() {
    this.turboFrameTarget.addEventListener("turbo:frame-load", () => {
      this.dialogTarget.showModal();
    });
  }

  close() {
    this.dialogTarget.close();
  }
}
