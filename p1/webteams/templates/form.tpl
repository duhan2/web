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
         <label for="name1_spa">1. Name</label>
         <input type="text"
                value="${data_o[0]}"
                id="name1_spa"
                name="name1_spa" required />
      </div>
      <div>
         <label for="vorname1_spa">1. Vorname</label>
         <input type="text"
                value="${data_o[1]}"
                id="vorname1_spa"
                name="vorname1_spa" required />
      </div>
      <div>
         <label for="matrnr1_spa">1. Matrikelnummer</label>
         <input type="number"
                value="${data_o[2]}"
                id="matrnr1_spa"
                name="matrnr1_spa" required />
      </div>
      <div>
         <label for="semesteranzahl1_spa">1. Semesteranzahl</label>
         <input type="number"
                value="${data_o[3]}"
                id="semesteranzahl1_spa"
                name="semesteranzahl1_spa" required />
      </div>
      <div>
         <label for="name2_spa">2. Name</label>
         <input type="text"
                value="${data_o[4]}"
                id="name2_spa"
                name="name2_spa" required />
      </div>
      <div>
         <label for="vorname2_spa">2. Vorname</label>
         <input type="text"
                value="${data_o[5]}"
                id="vorname2_spa"
                name="vorname2_spa" required />
      </div>
      <div>
         <label for="matrnr2_spa">2. Matrikelnummer</label>
         <input type="number"
                value="${data_o[6]}"
                id="matrnr2_spa"
                name="matrnr2_spa" required />
      </div>
      <div>
         <label for="semesteranzahl2_spa">2. Semesteranzahl</label>
         <input type="number"
                value="${data_o[7]}"
                id="semesteranzahl2_spa"
                name="semesteranzahl2_spa" required />
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