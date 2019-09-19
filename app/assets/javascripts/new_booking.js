function increasePassengerAmount () {
  // this.parentNode.querySelector('input[type=number]').stepUp()
  // Grab the value
  currentValue = document.getElementById('booking_passengers').value
  // Check if its less than 4
  if (currentValue < 4)
  // If less than 4, add
    document.getElementById('booking_passengers').stepUp();

}

function decreasePassengerAmount () {

  currentValue = document.getElementById('booking_passengers').value
  // Check if its less than 4
  if (currentValue > 1)
    document.getElementById('booking_passengers').stepDown();
}
