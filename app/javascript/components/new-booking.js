
const newBooking = () => {
 const choices = document.querySelectorAll('.form-check');
 choices.forEach((choice) => {
  choice.addEventListener('click', (event) => {
    if (!event.target.classList.contains("fas")) {
      event.currentTarget.classList.toggle('active');
      console.log(event.currentTarget);
      console.log(event.target);
      let checked = event.currentTarget.querySelector("input").checked;
        if (!event.target.classList.contains("check_boxes")){
          event.currentTarget.querySelector("input").checked = !checked;
        }
    }
  });
 });

};


export { newBooking };
