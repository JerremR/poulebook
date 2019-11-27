import "bootstrap";
import {initAutocomplete} from "../plugins/init_autocomplete"
import { loadDynamicBannerText } from '../components/banner';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
initAutocomplete();
loadDynamicBannerText();
