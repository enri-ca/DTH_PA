
let $F_entry := collection("file:///Users/Enrica/Documents/ENRICA/FORMAZ/2022-20 DHDK/3. THESI_18CFU\Supino_catalogazioniOA_F\Supino\F\2022\09\05?select=*.xml")
let $entry := $F_entry//RISULTATI
let $INVN := $F_entry//RISULTATI/CHEDA/PARAGRAFO/INVN

for $entry 
    if data($INVN) contains(, "1352|1351|28|)"
    return RISULTATI

