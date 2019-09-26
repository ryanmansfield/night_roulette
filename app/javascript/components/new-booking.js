const newBooking = () => {
  const choices = document.querySelectorAll('div.form-check');
  choices.forEach(choice => {
    choice.addEventListener('click', event => {
      const label =
        event.target.closest('label') || event.target.querySelector('label');
      const checkBox = document.getElementById(label.dataset.for);

      event.target.closest('div.form-check').classList.toggle('active');
      checkBox.checked = !checkBox.checked;
    });
  });
};

function increasePassengerAmount() {
  // this.parentNode.querySelector('input[type=number]').stepUp()

  let currentAmount = document.getElementById('booking_passengers');
  const addButton = document.getElementById('add-button');
  if (addButton) {
    addButton.addEventListener('click', () => {
      if (currentAmount.value < 4) {
        currentAmount.stepUp();
      }
    });
  }
}

function decreasePassengerAmount() {
  let currentAmount = document.getElementById('booking_passengers');
  const subtractButton = document.getElementById('subtract-button');
  if (subtractButton) {
    subtractButton.addEventListener('click', () => {
      if (currentAmount.value > 1) {
        currentAmount.stepDown();
      }
    });
  }
}

function geoLocation() {
  const x = document.getElementById('demo');
  function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(inputPosition);
    } else {
      x.innerHTML = 'Geolocation is not supported by this browser.';
    }
  }
  function inputPosition(position) {
    document.querySelector('.booking_latitude input').value =
      position.coords.latitude;
    document.querySelector('.booking_longitude input').value =
      position.coords.longitude;
  }
  const geoButton = document.getElementById('geo-btn');
  if (geoButton) {
    geoButton.addEventListener('click', getLocation);
  }
}

export {
  newBooking,
  increasePassengerAmount,
  decreasePassengerAmount,
  geoLocation
};
