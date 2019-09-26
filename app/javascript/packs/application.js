import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'
import { initMapbox } from '../plugins/init_mapbox';
import { newBooking } from '../components/new-booking';
import { copyToClipBoard } from '../components/copy-to-clip-board';
initMapbox();
newBooking();

let shareBtn = document.getElementById("share-btn");
if (shareBtn) {
  shareBtn.addEventListener("click", (event) => {
    copyToClipBoard();
  })
}
