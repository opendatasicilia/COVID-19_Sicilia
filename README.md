<div class="container-lg clearfix border p-2 bg-blue-light my-">
  <div class="col-md-6 float-left p-2 border0">
    📧 <a href="mailto:info@opendatasicilia.it">Chiedi aiuto!</a>
  </div>
  <div class="col-md-6 float-left p-2 border0 text-right">
    Leggi la nostra <a class="" href="http://opendatasicilia.it/2020/03/23/lettera-aperta-alla-regione-siciliana-per-la-pubblicazione-in-formato-machine-readable-dei-dati-sulla-covid19/" target="_blank"><b>lettera aperta</b></a> alla Regione Siciliana
  </div>
</div>

<h1>COVID-19: visualizzazioni di base, per la Sicilia</h1>

[**OpenDataSicilia**](https://groups.google.com/forum/#!categories/opendatasicilia) ha raccolto in questa pagina alcune **visualizzazioni** di base sulla **COVID-19** per la Sicilia, in modo che possano essere usate in qualsiasi altro sito, con un semplice <kbd>CTRL+C</kbd>, <kbd>CTRL+V</kbd> (un copia e incolla 😊).

Sono generate a partire da [questo file CSV](https://docs.google.com/spreadsheets/d/e/2PACX-1vRsbOOrQCv72t6fH4ktl7VtafxvU1RECTqSBpC3wc91C0hLxFLCFRNZc7os5Pbcmvq-Qh4B3aIO50L8/pub?gid=2065250495&single=true&output=csv) (*encoding* `UTF-8` e `,` come separatore), che ha due fonti: il lavoro di **trasformazione** in **tabella** dei **comunicati stampa** della Regione Siciliana, ed i  [dati già *machine readable*](https://github.com/pcm-dpc/COVID-19) pubblicati dal Dipartimento della Protezione Civile.<br>
I dati sono fruibili anche tramite [**SPARQL** *endpoint*](https://github.com/opendatasicilia/COVID-19_Sicilia#semantic-web).

<p>Questa pagina è parte del <a href="https://github.com/opendatasicilia/COVID-19_Sicilia"><strong><span class="text-red">Progetto COVID-19_Sicilia</span></strong></a>.</p>

<hr>

- [Lista elaborazioni](#lista-elaborazioni)
  - [Riepilogo regionale 1](#riepilogo-regionale-1)
  - [Riepilogo regionale 2](#riepilogo-regionale-2)
  - [Riepilogo regionale 3 - confermati totali e giornalieri](#riepilogo-regionale-3---confermati-totali-e-giornalieri)
  - [Riepilogo regionale 4 - andamento nuovi casi per regione con DPCM](#riepilogo-regionale-4---andamento-nuovi-casi-per-regione-con-dpcm)
  - [Riepilogo provinciale 1](#riepilogo-provinciale-1)
  - [Confermati, ospedalizzati e deceduti per provincia](#confermati-ospedalizzati-e-deceduti-per-provincia)
  - [Variazione casi positivi per provincia](#variazione-casi-positivi-per-provincia)
  - [Variazione nel tempo di raddoppio dei casi](#variazione-nel-tempo-di-raddoppio-dei-casi)
  - [Nuovi Casi per Provincia](#nuovi-casi-per-provincia)
- [Nota](#nota)


# Lista elaborazioni

## Riepilogo regionale 1

<iframe title="COVID-19 Sicilia: riepilogo regionale" aria-label="Table" id="datawrapper-chart-oR1rc" src="//datawrapper.dwcdn.net/oR1rc" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="245"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID-19 Sicilia: riepilogo regionale" aria-label="Table" id="datawrapper-chart-oR1rc" src="//datawrapper.dwcdn.net/oR1rc" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="245"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

## Riepilogo regionale 2

<iframe title="COVID19 Sicilia: andamento regionale" aria-label="Interactive line chart" id="datawrapper-chart-e6xdK" src="//datawrapper.dwcdn.net/e6xdK" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID19 Sicilia: andamento regionale" aria-label="Interactive line chart" id="datawrapper-chart-e6xdK" src="//datawrapper.dwcdn.net/e6xdK" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

## Riepilogo regionale 3 - confermati totali e giornalieri

<iframe title="COVID-19 Sicilia, confermati totali e giornalieri" aria-label="Interactive line chart" id="datawrapper-chart-Uwn7H" src="//datawrapper.dwcdn.net/Uwn7H" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID-19 Sicilia, confermati totali e giornalieri" aria-label="Interactive line chart" id="datawrapper-chart-Uwn7H" src="//datawrapper.dwcdn.net/Uwn7H" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

## Riepilogo regionale 4 - andamento nuovi casi per regione con DPCM

<iframe title="COVID-19 Sicilia: andamento nuovi casi per regione" aria-label="Interactive line chart" id="datawrapper-chart-2LFRG" src="//datawrapper.dwcdn.net/2LFRG/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="500"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID-19 Sicilia: andamento nuovi casi per regione" aria-label="Interactive line chart" id="datawrapper-chart-2LFRG" src="//datawrapper.dwcdn.net/2LFRG/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="500"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

## Riepilogo provinciale 1

<iframe title="COVID-19 Sicilia: riepilogo provinciale (latest)" aria-label="Column Chart" id="datawrapper-chart-UMAlR" src="//datawrapper.dwcdn.net/UMAlR" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="343"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID-19 Sicilia: riepilogo provinciale (latest)" aria-label="Column Chart" id="datawrapper-chart-UMAlR" src="//datawrapper.dwcdn.net/UMAlR" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="343"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

## Confermati, ospedalizzati e deceduti per provincia

<iframe title="COVID&ndash;19 Sicilia: confermati, ospedalizzati e deceduti per provincia" aria-label="Split Bars" id="datawrapper-chart-KS9iv" src="//datawrapper.dwcdn.net/KS9iv/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="340"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID&ndash;19 Sicilia: confermati, ospedalizzati e deceduti per provincia" aria-label="Split Bars" id="datawrapper-chart-KS9iv" src="//datawrapper.dwcdn.net/KS9iv/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="340"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

## Variazione casi positivi per provincia

<iframe title="COVID&ndash;19 Sicilia: variazione positivi per provincia" aria-label="Interactive line chart" id="datawrapper-chart-ifkg2" src="//datawrapper.dwcdn.net/ifkg2" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID&ndash;19 Sicilia: variazione positivi per provincia" aria-label="Interactive line chart" id="datawrapper-chart-ifkg2" src="//datawrapper.dwcdn.net/ifkg2" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

## Variazione nel tempo di raddoppio dei casi

Il **tempo di raddoppio** indica il tempo necessario per raddoppiare il numero dei contagiati.
Questo tempo, in giorni, viene qui misurato usando due intervalli differenti - gli ultimi 5 giorni a partire da ieri e i 5 giorni precedenti.
I valori calcolati, poi, vengono confrontati per capire se il tempo di raddoppio aumenta (in qual caso il contagio avviene più lentamente) o se diminuisce (in qual caso il contagio è più rapido).<br>

Questa elaborazione è totalmente ispirata a quella descritta in questo [blog post](https://blog.datawrapper.de/weekly-chart-coronavirus-doublingtimes/).
In particolare, il tempo di raddoppio viene calcolato seguendo questa formula:

**tempo di raddoppio = 5 * ln(2) / ln(q<sub>2</sub> / q<sub>1</sub>)<br>**

Dove 5 è il numero di giorni del nostro intervallo di riferimento, mentre q<sub>2</sub> e q<sub>1</sub> sono i numeri di contagiati al tempo t<sub>2</sub> (ieri / 6 giorni fa) e t<sub>1</sub> (6 giorni fa / 11 giorni fa), rispettivamente.

Nota bene: purtroppo il dato sul numero dei contagi non è un dato certo, perché ci potrebbero essere diversi contagiati non ancora noti.

<iframe title="Variazione nel tempo di raddoppio dei casi" aria-label="Table" id="datawrapper-chart-ln6mZ" src="//datawrapper.dwcdn.net/ln6mZ" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="560"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="Variazione nel tempo di raddoppio dei casi" aria-label="Table" id="datawrapper-chart-ln6mZ" src="//datawrapper.dwcdn.net/ln6mZ" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="560"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

## Nuovi Casi per Provincia

<iframe title="Nuovi Casi di Contagio Giornalieri - Province Siciliane" aria-label="Column Chart" id="datawrapper-chart-ueZWX" src="//datawrapper.dwcdn.net/ueZWX/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="Nuovi Casi di Contagio Giornalieri - Province Siciliane" aria-label="Column Chart" id="datawrapper-chart-ueZWX" src="//datawrapper.dwcdn.net/ueZWX/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

# Nota

Questa pagina è stata ispirata dal bel lavoro e dalla [bella idea](https://blog.datawrapper.de/coronaviruscharts/) di **Datawrapper** di predisporre delle "buone" visualizzazioni a tema COVID-19, da rendere disponibili a chiunque per essere utilizzate in qualsiasi sito web.
