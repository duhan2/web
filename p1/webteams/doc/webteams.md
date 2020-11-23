**Gruppe Falim**
**Team Tarik Cinar, Duhan Kazanci, Fatma Dilsu Sannuroglu, Kajan Gnanalingam**
**Gültigkeitsdatum 19.11.2020**

# Dokumentation zur Praktikumsaufgabe "Webteams"

## Aufbau der Webanwendung
    WEB/p1/webteams/
    app
    content
    data
    doc
    templates
    server.py

    Die Webanwendung besteht prinzipiell aus zwei Seiten. Einmal aus dem Formular zum hinzufügen neuer Teams und zum anderen aus der Hauptseite, wo diese gelistet sind. Auf der Hauptseite kann zwischen einer Listen oder einer Tabellenansicht wählen, wobei die Tabellenansicht standardmäßig aktiviert ist.

    Die Verzeichnisstruktur besteht aus dem Hauptordner WEB. In diesem sind weitere zwei weitere Unterordner vorhanden (p1 und webteams).
    In dem Ordner webteams befinden sich mehrere Ordner (app, content, data, doc, templates) und die server.py.
    In app befindet sich die application.py, database.py, dataid.py und die view.py.
    In content befindet sich die webteams.css und die webteams.js.
    In data befindet sich die maxid.json und webteams.json.
    In doc befindet sich die webteams.html und webteams.md.
    In templates befindet sich die form.tpl, list.tpl und list2.tpl


## Durchgeführte Ergänzungen

    Die Anwendung wurde um die Möglichkeit ergänzt zwei Personen einzutragen.
    Zusätzlich ist es nun auch möglich Eintrage zu löschen und die Präsentationsart der Daten zu ändern.
    Die application.py wurde so verändert dass der Parameter "listform"
    an die nötigen Methoden übergeben wird für die History Funktion.
    In der view.py wurde angepasst, in welcher Form die Tabelle dargestellt werden kann.

    Erfassen des 2.Mitglieds. (in : form.tpl, databse.py, application.py)
    Liste ergänzen für 2.Mitglied. (in : list.tpl)
    Spalte Semesteranzahl hinzufügt. (in : form.tpl, databse.py, application.py)
    Button Abbrechen hinzufügt. (in : form.tpl)
    Löschen hinzugefügt. (in : list.tpl, form.tpl, webteams.js, database.py, application.py)
    Gestalten der Seite. (in : list.tpl, form.tpl, webteams.css)




# Beschreibung des http - Datenverkehrs

## Start der Anwendung

    Anfrage: 
    GET localhost:8080/

    Antwort:
    Html Dokument der Hauptseite der Anwendung

    Zeiten beim Start der Anwendunng.

![](screenshot_1.png "Screenshot 1")

## Speichern von Formulardaten

    Anfrage:
    POST localhost:8080/add/?listform=tabelle
    mit Formulardaten

    Antwort:
    Html Dokument der Hauptseite der Anwendung

    Zeiten beim Speichern in Formular.

![](screenshot_2.png "Screenshot 2")