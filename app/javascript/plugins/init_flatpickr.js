import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#booking_start_date", {
  "locale": French,
  altFormat: "j F, Y",
  dateFormat: "d-m-Y",
  altInput: true,
  plugins: [new rangePlugin({ input: "#booking_end_date"})],
  onChange: function (selectedDates, dateStr) {
    if (selectedDates.length == 2) {
      const newBooking = document.getElementById('book-chicken-btn');
      // // errors = document.getElementById('js-error');
      const priceElement = document.getElementById('chicken-price');
      const price = priceElement.dataset.price
      const nb_ms = selectedDates[1] - selectedDates[0];
      const nb_days = nb_ms / 86400000;
      newBooking.disabled = false;
      const totalPrice = price * nb_days;
      const totalPriceRounded = Math.round(totalPrice * 100) / 100;
      newBooking.value = "Book ta poule pour " + nb_days + " jours (" + totalPriceRounded  + '€)';
    }
  }
})

export { flatpickr };


