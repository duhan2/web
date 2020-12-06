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
         <label for="bezeichnung_spa">Bezeichnung</label>
         <input type="text"
                value="${data_o[0]}"
                id="bezeichnung_spa"
                name="bezeichnung" required disabled/>
      </div>
      <div>
         <label for="von_spa">Von</label>
         <input type="date"
                value="${data_o[1]}"
                id="von_spa"
                name="von" required disabled/>
      </div>
      <div>
         <label for="bis_spa">Bis</label>
         <input type="date"
                value="${data_o[2]}"
                id="bis_spa"
                name="bis" required disabled/>
      </div>
      <div>
         <label for="beschreibung_spa">Beschreibung</label>
         <input type="text"
                value="${data_o[3]}"
                id="beschreibung_spa"
                name="beschreibung" required disabled/>
      </div>
      <div>
        <label for="max_spa">maximale Teilnehmeranzahl</label>
        <input type="number"
               value="${data_o[4]}"
               id="max_spa"
               name="max_teilnehmer" required disabled />
     </div>
     <div>
        <label for="min_spa">minimale Teilnehmeranzahl</label>
        <input type="number"
               value="${data_o[5]}"
               id="min_spa"
               name="min_teilnehmer" required disabled/>
     </div>

     <div>
      <label for="qualifikation_spa">Qualifikation</label>
      <input type="text"
             value="${data_o[6]}"
             id="qualifikation_spa"
             name="qualifikation" required disabled />
      </div>

      <div>
         <label for="zertifikat_spa">Zertifikat</label>
         <input type="text"
               value="${data_o[7]}"
               id="zertifikat_spa"
               name="zertifikat" required disabled/>
      </div>
      
      <div>
      <a href="/?listform=pflegeweiterbildungen"> Zurück</a>
      </div>

   </form>
</body>
</html>