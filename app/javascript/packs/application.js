import flatpickr from 'flatpickr';
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
// import { initShowMapbox } from '../plugins/init_show_map';

import { initAutocomplete } from '../plugins/init_autocomplete'
import { initFlatpickr } from '../plugins/init_flatpickr';

initMapbox();
initAutocomplete();





