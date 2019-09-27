const mapRoulette = () => {
  const pins = document.querySelectorAll('.mapboxgl-marker');

  const blinkPin = pin => {
    pin.classList.toggle('blink');
  };

  const spinPins = () => {
    pins.forEach((pin, index, pins) => {
      setTimeout(() => {
        if (index == 0) {
          blinkPin(pin);
        } else if (index == pins.length) {
          blinkPin(pins[index - 1]);
        } else {
          blinkPin(pin);
          blinkPin(pins[index - 1]);
        }
      }, 500 * (1 + index * 0.5));
    });
    setTimeout(spinPins, 3000);
  };
  return spinPins();
};

export { mapRoulette };
