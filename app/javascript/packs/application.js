import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { newBooking } from '../components/new-booking';
import { copyToClipBoard } from '../components/copy-to-clip-board';
import { mapRoulette } from '../components/map-roulette';
initMapbox();
newBooking();
mapRoulette();

let shareBtn = document.getElementById('share-btn');
if (shareBtn) {
  shareBtn.addEventListener('click', event => {
    copyToClipBoard();
  });
}
