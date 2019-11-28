import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Réservez des poules pour vos activités uniques 🐓"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
