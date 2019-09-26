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
  addButton.addEventListener('click', () => {
    if (currentAmount.value < 4) {
      currentAmount.stepUp();
    }
  });
}

function decreasePassengerAmount() {
  let currentAmount = document.getElementById('booking_passengers');
  const addButton = document.getElementById('subtract-button');
  addButton.addEventListener('click', () => {
    if (currentAmount.value > 1) {
      currentAmount.stepDown();
    }
  });
}

export { newBooking, increasePassengerAmount, decreasePassengerAmount };
