const newBooking = () => {
  const choices = document.querySelectorAll('.form-check');
  choices.forEach(choice => {
    choice.addEventListener('click', event => {
      event.currentTarget.classList.toggle('active');
      let checked = event.currentTarget.querySelector('input').checked;
      event.currentTarget.querySelector('input').checked = !checked;
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
      navigator.geolocation.getCurrentPosition(showPosition);
    } else {
      x.innerHTML = 'Geolocation is not supported by this browser.';
    }
  }

  function showPosition(position) {
    x.innerHTML =
      'Latitude: ' +
      position.coords.latitude +
      '<br>Longitude: ' +
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
