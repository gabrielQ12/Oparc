//! A CHANGER DE PLACE, POUR PUG BOUCLE ET FORMULAIRE

const addButton = document.getElementById('ajouter-form');
const mainForm = document.getElementById('main-form');
let formCounter = 0;

addButton.addEventListener('click', () => {
  if (formCounter < 3) {
    const newForm = mainForm.cloneNode(true);
    newForm.querySelectorAll('input:not([name="nom"]), select').forEach(input => {
      input.value = '';
      input.required = false;
    });

    const labelElements = newForm.querySelectorAll('label');
    labelElements.forEach(label => {
      if (!label.htmlFor.includes('nom')) {
        label.remove();
      }
    });

    formCounter++;
    mainForm.insertAdjacentElement('afterend', newForm);
  }
});


// voir avec ca aussi

document.addEventListener('DOMContentLoaded', () => {
    const addButton = document.getElementById('ajouter-form');
    const reservationForm = document.getElementById('reservation-form');
    const maxForms = 3; // Maximum de formulaires additionnels
  
    let formCounter = 1;
  
    addButton.addEventListener('click', () => {
      if (formCounter < maxForms) {
        const newForm = reservationForm.cloneNode(true);
        newForm.reset(); // Réinitialiser les champs du formulaire
        newForm.querySelectorAll('input[name="nom[]"]').forEach(input => input.value = ''); // Réinitialiser les noms
        reservationForm.parentNode.insertBefore(newForm, addButton);
        formCounter++;
      }
    });
  });
  