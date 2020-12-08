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
         <label for="name_spa">Name</label>
         <input type="text"
                value="${data_o[0]}"
                id="name_spa"
                name="name" required 
                disabled/>
      </div>
      <div>
         <label for="vorname_spa">Vorname</label>
         <input type="text"
                value="${data_o[1]}"
                id="vorname_spa"
                name="vorname" required 
                disabled/>
      </div>
      <div>
         <label for="akademischergrad_spa">akademischer Grad</label>
         <input type="text"
                value="${data_o[2]}"
                id="akademischergrad_spa"
                name="akademischergrad" required
                disabled />
      </div>
      <div>
         <label for="tätigkeit_spa">Tätigkeit</label>
         <input type="text"
                value="${data_o[3]}"
                id="tätigkeit_spa"
                name="tätigkeit" required 
                disabled/>
      </div>
      <div>
        <label for="qualifikation_spa">Qualifikation</label>
        <input type="text"
               value="leer"
               id="qualifikation_spa"
               name="qualifikation" required 
               disabled/>
     </div>
      
     <div>
      <label for="zertifikat_spa">Zertifikat</label>
      <input type="text"
             value="leer"
             id="zertifikat_spa"
             name="zertifikat" required 
             disabled/>
      </div>

   </form>

      <br>

      <p>verfügbare Weiterbildungen in tabellarischer Form</p>

      <div class="customTable">
      <table>
         <tr>
           <th>Bezeichnung</th>
           <th>Aktionen</th>
         </tr>
         % for key in zusatz_data_o:
         <tr>
           <td>${zusatz_data_o[key][0]}</td>
           <td>
           <!--
               <form action="/save/?listform=${listform}" method="post">
                  <input type="hidden" name="kajan" value="${zusatz_data_o[0]}"/>
                  <input type="submit" value="teilnehmen"/>
               </form>
             -->
              <a href="#">teilnehmen</a>
            </td>
         </tr>
         % endfor
      </table>
      </div>

      <div>
      <a href="/?listform=sichtweisemitarbeiter"> Zurück</a>
      </div>



</body>
</html>
