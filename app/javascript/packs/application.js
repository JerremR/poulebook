import "bootstrap";
import {initAutocomplete} from "../plugins/init_autocomplete";
import { loadDynamicBannerText } from '../components/banner';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import {flatpickr} from "../plugins/init_flatpickr"


initMapbox();
initAutocomplete();
loadDynamicBannerText();
flatpickr();
