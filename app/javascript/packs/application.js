import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { newBooking } from '../components/new-booking';
import { mapRoulette } from '../components/map-roulette';
import { copyToClipBoard } from '../components/copy-to-clip-board';
import { copy } from 'gl-matrix/src/gl-matrix/mat2d';
initMapbox();
newBooking();
mapRoulette();

let shareBtn = document.getElementById('share-btn');
if (shareBtn) {
  shareBtn.addEventListener('click', event => {
    copyToClipBoard();
  });
}
