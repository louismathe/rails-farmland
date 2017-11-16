const buttons = document.querySelectorAll('.button-review');

buttons.forEach((button) => {
  button.addEventListener('click',( ) => {
    const form = document.querySelector('.form-review') ;
    form.classList.toggle('show');
})
})
