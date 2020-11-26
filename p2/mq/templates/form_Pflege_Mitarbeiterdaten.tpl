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
         <label for="name1_spa">Name</label>
         <input type="text"
                value="${data_o[0]}"
                id="name1_spa"
                name="name" required />
      </div>
      <div>
         <label for="vorname1_spa">Vorname</label>
         <input type="text"
                value="${data_o[1]}"
                id="vorname1_spa"
                name="vorname" required />
      </div>
      <div>
         <label for="matrnr1_spa">akademischer Grad</label>
         <input type="text"
                value="${data_o[2]}"
                id="matrnr1_spa"
                name="akademischergrad" required />
      </div>
      <div>
         <label for="semesteranzahl1_spa">Tätigkeit</label>
         <input type="text"
                value="${data_o[3]}"
                id="semesteranzahl1_spa"
                name="tätigkeit" required />
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