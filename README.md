<div class="container-lg clearfix border p-2 bg-blue-light my-">
  <div class="col-md-6 float-left p-2 border0">
    📧 <a href="mailto:info@opendatasicilia.it">Chiedi aiuto!</a>
  </div>
  <div class="col-md-6 float-left p-2 border0 text-right">
    Leggi la nostra <a class="" href="http://opendatasicilia.it/2020/03/23/lettera-aperta-alla-regione-siciliana-per-la-pubblicazione-in-formato-machine-readable-dei-dati-sulla-covid19/" target="_blank"><b>lettera aperta</b></a> alla Regione Siciliana
  </div>
</div>

---

**NOTA BENE**: Da qualche giorno (oggi 9 giugno 2020) la RegioneSiciliana non pubblica più giornalmente i propri bollettini #COVID19. Siamo pertanto costretti, in mancanza di altre fonti, ad adeguare la periodicità di aggiornamento del nostro dataset, in cui da circa 3 mesi raccogliamo i dati relativi alle **province siciliane**.

---

<h1>COVID-19: visualizzazioni di base, per la Sicilia</h1>

[**OpenDataSicilia**](https://groups.google.com/forum/#!categories/opendatasicilia) ha raccolto in questa pagina alcune **visualizzazioni** di base sulla **COVID-19** per la Sicilia, in modo che possano essere usate in qualsiasi altro sito, con un semplice <kbd>CTRL+C</kbd>, <kbd>CTRL+V</kbd> (un copia e incolla 😊).

Sono generate a partire da [questo file CSV](https://docs.google.com/spreadsheets/d/e/2PACX-1vRsbOOrQCv72t6fH4ktl7VtafxvU1RECTqSBpC3wc91C0hLxFLCFRNZc7os5Pbcmvq-Qh4B3aIO50L8/pub?gid=2065250495&single=true&output=csv) (*encoding* `UTF-8` e `,` come separatore), che ha due fonti: il lavoro di **trasformazione** in **tabella** dei **comunicati stampa** della Regione Siciliana, ed i  [dati già *machine readable*](https://github.com/pcm-dpc/COVID-19) pubblicati dal Dipartimento della Protezione Civile.<br>
I dati sono fruibili anche tramite [**SPARQL** *endpoint*](https://github.com/opendatasicilia/COVID-19_Sicilia#semantic-web), in [JSON](https://bertha.ig.ft.com/republish/publish/gss/1wc9t8X7wRqmWfGCBwREi0b9DpbgpCPpmHpqoPTVyPXI/Dati) e tramite un'[applicazione Android](https://github.com/opendatasicilia/COVID-19_Sicilia/blob/master/README.md#applicazione-android).

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

<hr>

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

<hr>

## Riepilogo regionale 3 - confermati totali e giornalieri

<iframe title="COVID-19 Sicilia, confermati totali e giornalieri" aria-label="Interactive line chart" id="datawrapper-chart-Uwn7H" src="//datawrapper.dwcdn.net/Uwn7H" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID-19 Sicilia, confermati totali e giornalieri" aria-label="Interactive line chart" id="datawrapper-chart-Uwn7H" src="//datawrapper.dwcdn.net/Uwn7H" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

<hr>

## Riepilogo regionale 4 - andamento nuovi casi per regione con DPCM

<iframe title="COVID-19 Sicilia: andamento nuovi casi per regione" aria-label="Interactive line chart" id="datawrapper-chart-2LFRG" src="//datawrapper.dwcdn.net/2LFRG" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="500"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="COVID-19 Sicilia: andamento nuovi casi per regione" aria-label="Interactive line chart" id="datawrapper-chart-2LFRG" src="//datawrapper.dwcdn.net/2LFRG" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="500"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

<hr>

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

<hr>

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

<hr>

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

<hr>

## Nuovi Casi per Provincia

<iframe title="Nuovi Casi di Contagio Giornalieri - Province Siciliane" aria-label="Column Chart" id="datawrapper-chart-ueZWX" src="//datawrapper.dwcdn.net/ueZWX" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>

<br>

👉 Se vuoi **includere questo grafico** sul tuo sito, copia il codice sottostante inserendolo su una pagina o articolo

```html
<iframe title="Nuovi Casi di Contagio Giornalieri - Province Siciliane" aria-label="Column Chart" id="datawrapper-chart-ueZWX" src="//datawrapper.dwcdn.net/ueZWX" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="400"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",function(a){if(void 0!==a.data["datawrapper-height"])for(var e in a.data["datawrapper-height"]){var t=document.getElementById("datawrapper-chart-"+e)||document.querySelector("iframe[src*='"+e+"']");t&&(t.style.height=a.data["datawrapper-height"][e]+"px")}})}();
</script>
```

[`torna su`](#lista-elaborazioni)

<hr>

# Nota

Questa pagina è stata ispirata dal bel lavoro e dalla [bella idea](https://blog.datawrapper.de/coronaviruscharts/) di **Datawrapper** di predisporre delle "buone" visualizzazioni a tema COVID-19, da rendere disponibili a chiunque per essere utilizzate in qualsiasi sito web.
