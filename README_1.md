# Potje

Kosten verdelen met je vriendengroep. Geen logins: iedereen opent dezelfde link.

Bestanden:
- `index.html`: de app zelf
- `config.js`: hier vul je de gegevens van je database in
- `supabase.sql`: maakt de tabel aan in je database

## Opzetten (ongeveer 10 minuten)

### 1. Database maken (Supabase, gratis)
1. Maak een account op supabase.com en kies **New project**. Kies een regio in Europa.
2. Open **SQL Editor**, plak de inhoud van `supabase.sql` en klik op **Run**.

### 2. Gegevens ophalen
Ga in je Supabase-project naar **Project Settings > API** (of **API Keys**). Kopieer:
- de **Project URL**
- de publieke sleutel: **anon public** of **publishable key**. Gebruik nooit de `service_role` of `secret` sleutel.

### 3. Op GitHub zetten
1. Maak op github.com een nieuwe **publieke** repository, bijvoorbeeld `potje`.
2. Kies **Add file > Upload files** en upload `index.html`, `config.js` en `supabase.sql`.
3. Open `config.js` in GitHub (potlood-icoon) en vervang `JOUW-PROJECT-URL` en `JOUW-ANON-SLEUTEL` door je eigen waarden. Sla op met **Commit changes**.

### 4. Website aanzetten
Ga in je repository naar **Settings > Pages**. Kies bij **Source** de optie **Deploy from a branch**, branch `main` en map `/ (root)`. Na ongeveer een minuut staat de link bovenaan die pagina, meestal `https://jouwnaam.github.io/potje/`.

### 5. Delen
Stuur de link naar je vrienden. Op een iPhone kan iedereen de pagina op het beginscherm zetten via Delen > Zet op beginscherm.

## Goed om te weten
- Iedereen met de link kan lezen en schrijven. Er is geen wachtwoord. Deel de link dus alleen met je groep. Kies eventueel een niet-voor-de-hand-liggende naam voor de repository.
- De sleutel in `config.js` is bedoeld om publiek te zijn. Hij geeft alleen toegang tot deze ene tabel.
- Wijzigingen van anderen verschijnen binnen ongeveer 5 seconden.
- Verwijderde uitgaven kun je meteen terugzetten via "Ongedaan maken". Daarna niet meer.
- Het gratis Supabase-project wordt na een week zonder gebruik gepauzeerd. Je kunt het dan met één klik weer aanzetten in het dashboard.
