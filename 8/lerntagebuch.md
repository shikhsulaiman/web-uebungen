



** **Toggle-Button **
**
js-4-toggleButton-logic:
selbe Muster

Dark Mode an/aus auf jeder modernen Webseite
Menü öffnen/schließen
Like-Button (gedrückt / nicht gedrückt)
Akkordeon-Elemente (auf-/zugeklappt)
Modal-Fenster (sichtbar/versteckt)




classList.toggle("dark")



System dark light. css
@media (prefers-color-scheme: dark) {
  body {
    background: #222;
    color: white;
  }
}






Womit willst du heute weitermachen?
A) Dark Mode (CSS dazu)
B) Mini-Taschenrechner
C) Arrays (Listen)



liste.html
createElement("li")
– erstellt ein <li> in JavaScript

appendChild(li)
– hängt es an die <ul> an



selbe Muster: Array → forEach → createElement → appendChild.

const namen = ["Mehmet", "Bia", "Anna"];
const Liste = document.querySelector("#liste");
namen.forEach(function(name) {
const li = document.createElement("li");
li.textContent = name;
Liste.appendChild(li);
});



liste2.html
eingabe.value
– holt den Text, der gerade im Input-Feld steht

eingabe.value = ""
– leert das Feld nach dem Hinzufügen






namen.push(name) – fügt einen Eintrag ans Array an
JSON.stringify(array) – Array → Text (für localStorage)
JSON.parse(text) – Text → Array (beim Laden)
|| [] – falls nichts gespeichert ist: leeres Array
liste.innerHTML = "" – Liste komplett leeren vor Neu-Aufbau


A) Einen einzelnen Eintrag löschen (in JavaScript):
localStorage.removeItem("namen");

B) Alles löschen (in JavaScript):
localStorage.clear();

C) Manuell in DevTools:
F12 → Application → Local Storage
Rechtsklick auf den Eintrag → "Delete"
Oder oben den 🚫-Button für „Clear all"


namen.splice(index, 1) – entfernt 1 Eintrag an der Position index.

const liste = ["a", "b", "c", "d"];
liste.splice(1, 1);   // entfernt "b"
// liste = ["a", "c", "d"]

Was geht ✅ – drei Möglichkeiten:
A) localStorage – im Browser speichern (am einfachsten, dauerhaft)
B) Download als Datei – Datei herunterladen
C) Backend / Server – richtige Datenbank (Profi-Stoff, später)


Wie sieht ein Backend aus? 🛠️
1. Backend-Programm (läuft auf einem Server):
Geschrieben in z. B. Node.js (JavaScript), Python, PHP, Java
Stellt eine API bereit – Adressen wie https://meineseite.de/api/namen
Verbindet sich mit einer Datenbank

2. Datenbank:
SQL-Datenbanken: MySQL, PostgreSQL, SQLite – Tabellen mit Spalten
NoSQL-Datenbanken: MongoDB, Firebase – flexibler, dokumentenbasiert


Du musst eine neue Sprache lernen (z. B. Node.js oder Python)
Server-Konfiguration verstehen
Datenbanken verstehen (eigenes Schulfach!)
Netzwerk-Grundlagen (HTTP, REST, etc.)
Sicherheit (Passwörter, Token, SQL-Injection, etc.)




JavaScript-Grundlagen festigen (Arrays, Funktionen, fetch)
Eine fertige API ansprechen (z. B. eine Wetter-API) – das ist Option D von vorhin und der ideale Übergang
Erst dann eigenes Backend bauen


A) Aussehen verbessern
– Deine Liste sieht funktional, aber roh aus. Mit etwas CSS wird daraus eine richtige App-Optik (Karten-Design, schönere Buttons, Hover-Effekte).
B) Funktionen erweitern
– Häkchen-Boxen ⬜ um Einträge als „erledigt" zu markieren. Damit wird's eine echte To-Do-Liste.
C) Neues Konzept:
Funktionen mit Parametern – Bisher schreiben wir oft dasselbe (speichern() + anzeigen()). Wir lernen, wie man Funktionen flexibler macht.
D) Mini-Projekt
– Ein Taschenrechner oder eine Wetter-Anzeige mit echten Daten aus dem Internet (API). Das ist ein großer Sprung, aber motivierend.




✅ Dark Mode mit System-Erkennung (live!)

✅ Arrays und forEach

✅ Liste dynamisch aus JavaScript aufbauen

✅ Input + Enter-Taste

✅ localStorage (Daten speichern)

✅ Einträge löschen und bearbeiten

✅ Event Bubbling mit stopPropagation

✅ Scope verstanden (Variablen in forEach)

✅ App-Design mit CSS




Was wäre logisch als Nächstes?
Du stehst jetzt an einem Punkt, wo viele Wege offen sind. Hier sind 4 sinnvolle Optionen:
A) Aussehen verbessern – Deine Liste sieht funktional, aber roh aus. Mit etwas CSS wird daraus eine richtige App-Optik (Karten-Design, schönere Buttons, Hover-Effekte).
B) Funktionen erweitern – Häkchen-Boxen ⬜ um Einträge als „erledigt" zu markieren. Damit wird's eine echte To-Do-Liste.
C) Neues Konzept: Funktionen mit Parametern – Bisher schreiben wir oft dasselbe (speichern() + anzeigen()). Wir lernen, wie man Funktionen flexibler macht.
D) Mini-Projekt – Ein Taschenrechner oder eine Wetter-Anzeige mit echten Daten aus dem Internet (API). Das ist ein großer Sprung, aber motivierend.





Was wir verbessern

Hintergrund + zentriertes Layout
Schöneres Eingabefeld
Buttons mit Farbe und Hover
Listen-Einträge als „Karten"
Etwas Abstand und Atmung



B) Häkchen-Boxen – Einträge als „erledigt" markieren (echte To-Do-Liste)
C) Funktionen mit Parametern – Code eleganter machen
D) Wetter-API – echte Daten aus dem Internet holen (großer Sprung!)





Eine echte To-Do-App mit:
✅ Hinzufügen (Button + Enter-Taste)

✅ Bearbeiten (✏️)

✅ Verschieben (⬆️)

✅ Löschen (❌)

✅ Erledigt-Markierung (Klick auf Eintrag)

✅ Speichern im Browser (localStorage)

✅ Als JSON exportieren

✅ Profi-UX (Buttons erst bei Hover sichtbar, vertikal gestapelt)

✅ Sauberes App-Design


