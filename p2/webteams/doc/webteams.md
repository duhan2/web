# Dokumentation zur Praktikumsaufgabe "Webteams"
edited by Duhan

## Aufbau der Webanwendung
Die Webanwendung besteht prinzipiell aus zwei Seiten. Einmal aus dem Formular zum hinzufügen neuer Teams und zum anderen aus der Hauptseite. Auf der Hauptseite kann zwischen einer Listen oder einer Tabellenansicht gewählt werde, wobei die Tabellenansicht standardmäßig aktiviert ist.

## Durchgeführte Ergänzungen
Die Anwendung wurde um die Möglichkeit ergänzt zwei Personen einzutragen. Zusätzlich ist es nun auch möglich Eintrage zu löschen und die Präsentationsart der Daten zu ändern.
Die application.py wurde so verändert dass der Parameter "listform"
an die nötigen Methoden übergeben wird für die History Funktion.
In der view.py wurde angepasst, in welcher Form die Tabelle dargestellt werden kann.


## Beschreibung des HTTP-Datenverkehrs

### beim Start der Anwendung
Anfrage: 
GET localhost:8080/

Antwort:
html Dokument der Hauptseite der Anwendung

Screenshot:
![alt text](screenshot_1.png "Screenshot 1")
### beim Speichern von Formulardaten
Anfrage:
POST localhost:8080/add/?listform=tabelle
mit Formulardaten

Antwort:
html Dokument der Hauptseite der Anwendung

Screenshot:
![alt text](screenshot_2.png "Screenshot 2")
