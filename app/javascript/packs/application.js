import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initMapConfirmation } from '../plugins/init_map_confirmation';
import {
  newBooking,
  increasePassengerAmount,
  decreasePassengerAmount,
  geoLocation
} from '../components/new-booking';
import { copyToClipBoard } from '../components/copy-to-clip-board';
import { mapRoulette } from '../components/map-roulette';
initMapbox();
initMapConfirmation();
newBooking();
increasePassengerAmount();
decreasePassengerAmount();
geoLocation();
mapRoulette();
copyToClipBoard();
