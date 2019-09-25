
const newBooking = () => {
 const choices = document.querySelectorAll('.form-check');
 choices.forEach((choice) => {
  choice.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('active');
    let checked = event.currentTarget.querySelector("input").checked;
    event.currentTarget.querySelector("input").checked = !checked;
  });
 });

};


export { newBooking };
