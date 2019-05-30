const startDateInput = document.getElementById('booking_start_date');
const endDateInput = document.getElementById('booking_end_date');

if (startDateInput != null) {
const unavailableDates = JSON.parse(document.querySelector('#campervan-booking-dates').dataset.unavailable)
endDateInput.disabled = true

flatpickr("#booking_start_date", {
  minDate: "today",
  disable: unavailableDates,
  dateFormat: "Y-m-d"
});


startDateInput.addEventListener("change", (e) => {
  console.log('im in the listener')

  if (startDateInput != null) {
    endDateInput.disabled = false
  }
  flatpickr("#booking_end_date", {
    minDate: e.target.value,
    disable: unavailableDates,
    dateFormat: "Y-m-d"
    });
  })
};
