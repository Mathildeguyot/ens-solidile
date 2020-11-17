const mobileMenu = () => {
  const button = document.querySelector('#menu');
  const screen = document.querySelector('#mobile-menu');
  const items = document.querySelectorAll('.mobile-menu-item');

  button.addEventListener('click', (event) => {
    screen.classList.toggle('invisible');
  });


  items.forEach((item) => {
    item.addEventListener('click', (event) => {
      screen.classList.toggle('invisible');
    });
  });

};

export { mobileMenu };
