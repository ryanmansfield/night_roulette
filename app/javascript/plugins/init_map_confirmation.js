import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map-confirmation');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map-confirmation',
    style: 'mapbox://styles/mapbox/dark-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach(marker => {
    new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
  // this where one would change the loading zoom and padding is for the markers in it
  map.fitBounds(bounds, { padding: 20, maxZoom: 15 });
};

const initMapConfirmation = () => {
  if (mapElement) {
    const map = buildMap();
    const myPlace = JSON.parse(mapElement.dataset.myplace);
    map.scrollZoom.disable();
    map.dragPan.disable();
    addMarkersToMap(map, myPlace);
    fitMapToMarkers(map, myPlace);
  }
};

export { initMapConfirmation };
