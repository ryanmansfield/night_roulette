const mapRoulette = () => {
  const pins = document.querySelectorAll('.mapboxgl-marker');

  const blinkPin = pin => {
    pin.classList.toggle('blink');
  };

  const spinPins = () => {
    pins.forEach((pin, index, pins) => {
      setTimeout(() => {
        if (index > 1) {
          blinkPin(pin);
          blinkPin(pins[index - 1]);
        }
        // else if (index == pins.length - 1) {
        //   setTimeout(() => {
        //     blinkPin(pin);
        //   }, 2000 * index);
        // }
      }, 500 * (1 + index * 0.5));
    });
  };
  const spinner = document.querySelector('#spin-it');
  if (spinner) {
    spinner.addEventListener('click', e => {
      spinPins();
    });
  }
};

export { mapRoulette };
