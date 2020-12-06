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
                name="name" required />
      </div>
      <div>
         <label for="vorname_spa">Vorname</label>
         <input type="text"
                value="${data_o[1]}"
                id="vorname_spa"
                name="vorname" required />
      </div>
      <div>
         <label for="akademischergrad_spa">akademischer Grad</label>
         <input type="text"
                value="${data_o[2]}"
                id="akademischergrad_spa"
                name="akademischergrad" required />
      </div>
      <div>
         <label for="tätigkeit_spa">Tätigkeit</label>
         <input type="text"
                value="${data_o[3]}"
                id="tätigkeit_spa"
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