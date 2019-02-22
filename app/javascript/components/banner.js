import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["THE GREATEST COCKTAILS EVER", "Enjoy a drink"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
