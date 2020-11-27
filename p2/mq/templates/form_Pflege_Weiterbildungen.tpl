## coding: utf-8
<!DOCTYPE html>
<html>
<head>
   <title>Web-Teams</title>
   <meta charset="UTF-8" />
   <style>
      @import "/webteams.css";
  </style>
</head>
<body>
   <form id="idWTForm" action="/save/?listform=${listform}" method="POST">
      <input type="hidden" value="${key_s}" id="id_spa" name="id_spa" />
      <div>
         <label for="name1_spa">Bezeichnung</label>
         <input type="text"
                value="${data_o[0]}"
                id="name1_spa"
                name="bezeichnung" required />
      </div>
      <div>
         <label for="vorname1_spa">Von</label>
         <input type="date"
                value="${data_o[1]}"
                id="vorname1_spa"
                name="von" required />
      </div>
      <div>
         <label for="matrnr1_spa">Bis</label>
         <input type="date"
                value="${data_o[2]}"
                id="matrnr1_spa"
                name="bis" required />
      </div>
      <div>
         <label for="semesteranzahl1_spa">Beschreibung</label>
         <input type="text"
                value="${data_o[3]}"
                id="semesteranzahl1_spa"
                name="beschreibung" required />
      </div>
      <div>
        <label for="matrnr2_spa">maximale Teilnehmeranzahl</label>
        <input type="number"
               value="${data_o[4]}"
               id="matrnr2_spa"
               name="max_teilnehmer" required />
     </div>
     <div>
        <label for="semesteranzahl2_spa">minimale Teilnehmeranzahl</label>
        <input type="number"
               value="${data_o[5]}"
               id="semesteranzahl2_spa"
               name="min_teilnehmer" required />
     </div>

      <div>
         <input type="submit" value="Speichern"/>
      </div>
      
      <div>
      <a href="/?listform=${listform}"> Zurück</a>
      </div>

   </form>
</body>
</html>