<!DOCTYPE html> 
<html>
<head>

    <meta charset="UTF-8">
    <title> Navigation </title>
    <meta name="Navigation" content="Nav" >
    <style>
        @import "/startseite.css";
    </style>

</head>

    <body> 
        <div class="container">
            <div class="qualifizierung">
              <div>
                <div>Mitarbeiterqualifizierung</div>
                <div>Version 1.0 / 22.11.2020</div>
              </div>
            </div>
          
            <div class="team">
              <span>Gruppe Falim / Team Tarik Cinar, Duhan Kazanci, Fatma Dilsu Sannuroglu, Kajan Gnanalingam</span>
            </div>
          
            <nav class="a">
              <a href="/?listform=startseite">[Startseite]</a></li>
            </nav>
          
            <nav class="b">
              <ul class="unstyled-list">
                 <li><a href="/?listform=pflegemitarbeiterdaten">[Pflege Mitarbeiterdaten]</a></li>
                 <li><a href="/?listform=pflegeweiterbildungen">[Pflege Weiterbildungen]</a></li>
              </ul>
            </nav>
          
            <nav class="c">
              <h3>Teilnahme</h3>
              <ul>
                <li><a href="/?listform=sichtweisemitarbeiter">[Sichtweise Mitarbeiter]</a></li>
                <li><a href="/?listform=sichtweiseweiterbildungen">[Sichtweise Weiterbildungen]</a></li>
              </ul>
            </nav>
          
            <nav class="d">
              <h3>Auswertung</h3>
              <ul>
                <li><a href="/?listform=mitarbeiter">[Mitarbeiter]</a></li>
                <li><a href="/?listform=weiterbildungen">[Weiterbildungen]</a></li>
                <li><a href="/?listform=zertifikate">[Zertifikate]</a></li>
              </ul>
            </nav>
            
            <main class="e">

            <div class="customTable">
              <h3>Pflege Weiterbildungen</h3>
                <table>
                    <tr>
                      <th>Bezeichnung</th><th>Von</th><th>Bis</th><th>Beschreibung</th>
                      <th>maximale Teilnehmerzahl</th><th>minimale Teilnehmerzahl</th>
                      <th>Aktion</th>
                    </tr>
                    % for key_s in data_o:
                    <tr>
                      <td>${data_o[key_s][0]}</td>
                      <td>${data_o[key_s][1]}</td>
                      <td>${data_o[key_s][2]}</td>
                      <td>${data_o[key_s][3]}</td>
                      <td>${data_o[key_s][4]}</td>
                      <td>${data_o[key_s][5]}</td>
                      <td>
                          <a href="/edit/${key_s}/?listform=${listform}">Ändern</a>
                          <a href="/delete/${key_s}/?listform=${listform}" class="clDelete">Löschen</a>
                      </td>
                    </tr>
                    % endfor
                </table>
              </div>    
                <div>
                  <a href="/add/?listform=${listform}"> Erfassen </a>
                </div>
    


            </main>

          </div>    
    </body>




</html>
