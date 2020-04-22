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

<hr>
