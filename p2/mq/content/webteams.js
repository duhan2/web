function confirmDelete_p (event_opl) {

   if ((event_opl.target.tagName.toLowerCase() == 'a') && (event_opl.target.className == "clDelete")) {
      // Klick auf Link zum Löschen
      if (confirm('Wollen Sie den Datensatz wirklich löschen ?')) {
         
      }else{
         event.preventDefault();
      }
       // Ihre Ergänzung
   }
}

window.onload = function () {
   let body_o = document.getElementsByTagName('body')[0];
   body_o.addEventListener('click', confirmDelete_p, false);
}