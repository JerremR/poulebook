import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#booking_start_date", {
  "locale": French,
  altFormat: "j F, Y",
  dateFormat: "d-m-Y",
  altInput: true,
  plugins: [new rangePlugin({ input: "#booking_end_date"})]
})

export { flatpickr };
