//= require rails-ujs
//= require_tree .

newBooking = document.getElementById('book-chicken-btn');
price = document.getElementById('chicken-price');
start_date = document.getElementById('booking_start_date');
end_date = document.getElementById('booking_end_date');

const calculatePrice = (x) => {
  if(end_date.valueAsDate && start_date.valueAsDate) {
    nb_ms = end_date.valueAsDate - start_date.valueAsDate;
    // console.log(start_date.valueAsDate)
    // console.log(end_date.valueAsDate)
    nb_days = nb_ms / 86400000;
    newBooking.disabled = false;
    totalPrice = price.dataset.price * nb_days;
    totalPriceRounded = Math.round(totalPrice * 100) / 100;
    newBooking.value = "Book ta poule pour " + nb_days + " jours (" + totalPriceRounded  + '€)';
  } else {
    newBooking.value = "Book ta poule"
    newBooking.disabled = true;
  }
};

if (newBooking) {
  start_date.addEventListener('change', (event) => {
    calculatePrice(0);
  });
  end_date.addEventListener('change', (event) => {
    calculatePrice(0);
  });
}
