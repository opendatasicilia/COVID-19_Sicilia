- [Perché questo spazio](#perché-questo-spazio)
  - [Scopo](#scopo)
  - [Schema dati](#schema-dati)
  - [Controlli effettuati sui dati](#controlli-effettuati-sui-dati)
  - [Lettera aperta](#lettera-aperta)
  - [Ringraziamenti](#ringraziamenti)


# Perché questo spazio

L’esigenza di avere un dataset in cui vengano registrati i valori relativi all’epidemia **COVID-19** in **Sicilia** dettagliato per province nasce dalla **mancanza** di un tale **dataset** nel repo del [Dipartimento della Protezione Civile](https://github.com/pcm-dpc/COVID-19), dove i dati disaggregati **per provincia** riguardano **soltanto** il campo “**totale_casi**”, e dalla mancanza di disponibilità di tali dati da parte della Regione Siciliana.<br>
Per essere più precisi, **la Regione Siciliana** pubblica quotidianamente (in prosa e per immagini) un comunicato in cui vengono riportati alcuni valori che riguardano l’epidemia COVID-19 in Sicilia, avvisando che sono i valori comunicati al Dipartimento di Protezione Civile ma **non rende appunto disponibile un dataset** che elenchi l’insieme di questi dati comunicati quotidianamente.

Il 23 marzo 2020 abbiamo scritto una [**lettera aperta**](#lettera-aperta) (e inviato una richiesta via email) alla **Regione Siciliana**, per chiedere che questi dati fossero pubblicati anche in modalità ***machine readable***, anche come tabelle. Ad oggi **nessuna risposta**.

## Scopo

Questo dataset è quindi ***il frutto della raccolta dei dati pubblicati dalla Regione Siciliana*** e ha lo scopo di consentirne la loro **analisi** per **ciascuna provincia** siciliana andando a colmare un’importante lacuna.<br>
I dati dettagliati per provincia pubblicati dalla Regione Siciliana non coprono tutte le informazioni: alcuni valori vengono forniti come dato regionale complessivo. È il caso, ad esempio, del numero di pazienti ricoverati in terapia intensiva (campo `terapia_intensiva`) e del numero dei “tamponi” effettuati.

Per quanto riguarda il numero dei pazienti in isolamento domiciliare (campo `isolamento_domiciliare`) sebbene la Regione Siciliana lo fornisca come totale regionale è possibile ricavarne il valore dettagliato per provincia sottraendo il valore dei ricoverati (campo `totale_ospedalizzati`) dal valore del `totale positivi` (precedentemente `totale_attualmente_positivi`”):
```
isolamento_domiciliare = totale_positivi - totale_ospedalizzati
```

## Schema dati

Riportiamo qui di seguito il significato della tipologia dei valori esposti e le formule con cui vengono ricavati i valori totali.

- `ricoverati con sintomi`; si tratta dei pazienti affetti da Covid-19 ricoverati ma non in terapia intensiva. Non è stato possibile ricavare i dati disaggregati per provincia.
- `terapia_intensiva`; si tratta dei pazienti affetti da Covid-19 ricoverati in terapia intensiva. Non è stato possibile ricavare i dati disaggregati per provincia. Il dato comunicato riguarda il totale regionale.
- `totale_ospedalizzati` = `ricoverati_con_sintomi` + terapia_intensiva` ; valore comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `isolamento_domiciliare`; si tratta dei pazienti affetti da Covid-19 ma non ricoverati. Il dato non viene comunicato dalla Regione Siciliana dettagliatamente per provincia ma si ottiene sottraendo il `totale_ospedalizzati` dal `totale_positivi` (si veda sopra).
- `totale_positivi` = `totale_ospedalizzati` + `isolamento_domiciliare`; il dato è comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `variazione_totale_positivi` = `totale_positivi` del giorno corrente - `totale_positivi` del giorno precedente. Si tratta di un valore calcolato.
- `nuovi_positivi` = `totale_casi` del giorno corrente - `totale_casi` del giorno precedente. Si tratta di un valore calcolato e misura l’espandersi dell’epidemia.
- `dimessi_guariti`; si tratta dei paziendi dimessi o guariti; valore comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `deceduti`; si tratta dei pazienti deceduti; valore comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `totale_casi` = `totale_positivi` + `dimessi_guariti` + `deceduti`; si tratta del totale dei pazienti che hanno contratto il contagio indipendentemente che siano ancora in cura, che siano guariti o deceduti. Questo dato, che rappresenta un valore calcolato, veniva inizialmente comunicato dalla Regione Siciliana dettagliato per ciascuna provincia; attualmente è rinvenibile come unico dato provinciale comunicato dal Dipartimento della Protezione Civile.
- `tamponi`; non è stato possibile ricavare i dati disaggregati per provincia poiché il dato comunicato dalla Regione Siciliana riguarda il totale regionale.

## Controlli effettuati sui dati

La rilevazione dei dati presenti nel nostro dataset è stata oggetto di controlli di consistenza dei dati stessi e che per i primi giorni, sostanzialmente dal 24/02/2020 al 05/03/2020, data in cui la Regione Siciliana ha iniziato a pubblicare regolarmente i propri comunicati, è stato necessario effettuare ulteriori verifiche sulle notizie di stampa locali per integrare correttamente alcuni dati mancanti (quelli riguardanti guariti_dimessi e deceduti) e associarli alla relativa provincia.<br>
Dai controlli effettuati sono stati rilevati alcuni casi (5 alla data del 03/04/2020) in cui si sospetta dell’accuratezza dei dati esposti.

## Lettera aperta

La nostra comunità (**[Open Data Sicilia](http://opendatasicilia.it/)**), consapevole dell’importanza di disporre in maniera organica, strutturata (***machine readable***) e **aperta** (dati resi disponibili con licenza aperta, open data) della maggior quantità e tipologia possibile di dati riguardanti l’epidemia COVID-19 in Sicilia, ha indirizzato alle autorità regionali una [**lettera aperta**](http://opendatasicilia.it/2020/03/23/lettera-aperta-alla-regione-siciliana-per-la-pubblicazione-in-formato-machine-readable-dei-dati-sulla-covid19/) con la quale chiede il rilascio degli stessi in tali modalità e la loro integrazione con ulteriori dati (ad esempio dati dettagliati per comuni, per sesso, per età, ecc.), che consentano una completa analisi del fenomeno in Sicilia, offrendo al contempo la propria disponibilità a supportare l’amministrazione nel rendere gli stessi disponibili alla più amplia platea di soggetti interessati (ricercatori, giornalisti, data scientist, semplici cittadini, ecc.).<br>
**In attesa di una risposta**, Open Data Sicilia ha deciso di rendere intanto disponibile quanto finora raccolto.

## Ringraziamenti

Questo lavoro si basa sopratutto sul tempo di [Nino Galante](https://twitter.com/picomiles) e [Totò Fiandaca](https://twitter.com/totofiandaca), a cui va il nostro ringraziamento.
