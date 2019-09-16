import flatpickr from "flatpickr"
import "flatpickr/dist/themes/confetti.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "Y-m-d",
})
