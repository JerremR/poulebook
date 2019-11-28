import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Réservez des poules pour vos activités uniques 🐓"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
