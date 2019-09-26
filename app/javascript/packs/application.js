import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import {
  newBooking,
  increasePassengerAmount,
  decreasePassengerAmount
} from '../components/new-booking';
import { copyToClipBoard } from '../components/copy-to-clip-board';
import { mapRoulette } from '../components/map-roulette';
initMapbox();
newBooking();
increasePassengerAmount();
decreasePassengerAmount();
mapRoulette();
copyToClipBoard();
