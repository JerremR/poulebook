//= require rails-ujs
//= require_tree .

newBooking = document.getElementById('book-chicken-btn');
errors = document.getElementById('js-error');
price = document.getElementById('chicken-price');
start_date = document.getElementById('booking_start_date');
end_date = document.getElementById('booking_end_date');

function calculatePrice(x) {
  nb_ms = end_date.valueAsDate - start_date.valueAsDate;
  // console.log(start_date.valueAsDate)
  // console.log(end_date.valueAsDate)
  nb_days = nb_ms / 86400000;
  newBooking.disabled = false;
  totalPrice = price.dataset.price * nb_days;
  totalPriceRounded = Math.round(totalPrice * 100) / 100;
  newBooking.value = "Book ta poule pour " + nb_days + " jours (" + totalPriceRounded  + '€)';
};

function check_from_to(x) {
  if(end_date.valueAsDate && start_date.valueAsDate) {
    if(end_date.valueAsDate <= start_date.valueAsDate) {
      errors.innerHTML = "<span class='text-danger'>Gros nigaud ! La date de fin doit être postérieure à la date de début.</span>";
        newBooking.value = "Book ta poule"
        newBooking.disabled = true;
        return false;
    } else {
      errors.innerHTML = "";
      return true;
    }
  } else {
    newBooking.value = "Book ta poule"
    newBooking.disabled = true;
    return false;
  }
};

if (newBooking) {
  start_date.addEventListener('change', (event) => {
    if (check_from_to(0)) {
      calculatePrice(0);
    }
  });
  end_date.addEventListener('change', (event) => {
    if (check_from_to(0)) {
      calculatePrice(0);
    }
  });
}
