

git config --global user.name "shikhsulaiman"
git config --global user.email "deine@email.de"

cd ~/Desktop/ub
git status

Wenn da (main) am Ende des Prompts steht und Git antwortet → Repo ist intakt.

git config --global --add safe.directory D:/ub

git status




remote: Permission to shikhsulaiman/web-uebungen.git denied to chesselmann-lang.
fatal: unable to access ... error: 403

Lösung: Bei GitHub als richtige Person einloggen
Schritt 1 – Alte Anmelde-Daten entfernen.
Drück auf Windows die Windows-Taste, tippe „Anmeldeinformationsverwaltung" (oder „Credential Manager"), öffne die App.
Klick auf „Windows-Anmeldeinformationen" (Tab).
Such Einträge mit „git" oder „github" (z. B. git:https://github.com).
→ Aufklappen → „Entfernen".

git push origin main

$ git init
Reinitialized existing Git repository in D:/ub/.git/

$ git remote add origin ...
error: remote origin already exists.

