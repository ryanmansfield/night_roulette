const newBooking = () => {
  const choices = document.querySelectorAll('div.form-check');
  choices.forEach(choice => {
    choice.addEventListener('click', event => {
      const label = event.target.closest('label') || event.target.querySelector('label');
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
  const addButton = document.getElementById('subtract-button');
  if (addButton) {

    addButton.addEventListener('click', () => {
      if (currentAmount.value > 1) {
        currentAmount.stepDown();
      }
    });
  }
}

export { newBooking, increasePassengerAmount, decreasePassengerAmount };


