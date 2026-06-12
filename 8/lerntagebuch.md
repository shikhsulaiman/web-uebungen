



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

