import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const metaBookings = document.getElementById('bookings-ranges').dataset.bookings
const BookingDatesJson = JSON.parse(metaBookings);
flatpickr("#booking_start_date", {
  "locale": French,
  altFormat: "d-m-Y",
  dateFormat: "d-m-Y",
  altInput: true,
  plugins: [new rangePlugin({ input: "#booking_end_date"})],
  minDate: "today",
  disable: BookingDatesJson,
  onChange: function (selectedDates, dateStr) {
    if (selectedDates.length == 2) {
      const newBooking = document.getElementById('book-chicken-btn');
      const price = document.getElementById('chicken-price').dataset.price
      const nb_days = (selectedDates[1] - selectedDates[0]) / 86400000;
      newBooking.disabled = false;
      const totalPrice = price * nb_days;
      const totalPriceRounded = Math.round(totalPrice * 100) / 100;
      newBooking.value = "Book ta poule pour " + nb_days + " jours (" + totalPriceRounded  + '€)';
    }
  }
});
export { flatpickr };


