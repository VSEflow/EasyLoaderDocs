# Häufig gestellte ??? questionn

Wir haben einige häufige Fragen gesammelt, die uns häufig gestellt werden, um diesen FAQ-Bereich zu erstellen, in dem Sie schnell Hilfe nachschlagen können. Wenn Ihre Frage nicht beantwortet werden konnte, wenden Sie sich bitte an [uns](https://www.vse-flow.com/de/contact-persons.html).

[//]: # (## :material-feature-search: Allgemeine Eigenschaften)

[//]: # (Allgemeines Merkmal)


## :material-chat-question: How to ...?

[//]: # (How to XXX?)
??? question "Wie ändere ich den Durchflussbereich / Skalenendwert?"
    Siehe Abschnitt [Analogausgang](3features.md#analog-output). Ändern Sie die Option für den ```Vollskalen-Durchfluss``.

[//]: # (How to XXX?)
??? question "Wie gebe ich die Linearisierung am besten ein?"
    Siehe den Abschnitt [Linearisierung](3features.md#linearization). Am besten bereiten Sie eine Tabelle mit den beiden Spalten _Frequenz_ und _K-Faktor_ in Microsoft Excel vor und fügen diese mit der Kopieren-Einfügen-Funktion in den **Linearisierungstabellen-Editor** ein.

## :material-connection: Verbindung

[//]: # (Verbindung)
??? question "Ich kann keine Verbindung zum FU210 (über miniUSB) mit dem EasyLoader herstellen!" 
    Stellen Sie sicher, dass das Gerät mit 24 V DC versorgt wird. Der USB-Anschluss versorgt das Gerät nicht mit genügend Strom, um es einzuschalten.

[//]: # (Anschluss)
??? question "Ich kann mit dem EasyLoader keine Verbindung zu einem Gerät (über RS232) herstellen!" 
    - Stellen Sie sicher, dass die ```Rx`` und ``Tx`` Drähte gekreuzt sind. Versuchen Sie sie zu vertauschen. 
    - Stellen Sie sicher, dass das Gerät mit 24 V versorgt wird.

[//]: # (Verbindung)
??? question "Ich kann mit dem EasyLoader keine Verbindung zu einem Gerät (in einem Tischgehäuse mit USB-RS232 Adapter) herstellen!" 
    - Die RS232-Leitungen sind bereits intern gekreuzt. Achten Sie darauf, dass Sie ***NICHT*** den Nullmodem-Adapter oder das Crossed-Cable verwenden. 
    - Stellen Sie sicher, dass das Gerät mit 24 V versorgt wird.

[//]: # (Verbindung)
??? question "Nach der Verbindung mit dem EasyLoader kann ich mich nicht mehr mit OS 10.0 oder der alten Version von EasyLoader verbinden!" 
    - Versuchen Sie die COM-Port Einstellungen der OS 10.0 Software auf 38400 Baud, 7 Bits, 1 Stop Bit, Even Parity zu ändern. EasyLoader verwendet eine höhere Baudrate für eine schnellere Datenübertragung.

    - Wenn Sie die alte Version von VSE EasyLoader installiert haben, öffnen Sie sie und versuchen Sie, mit der rechten Maustaste auf die untere Verbindungsleiste zu klicken, wobei der richtige COM-Port im Dropdown-Menü ausgewählt ist. Wählen Sie dann "Verbindung reparieren".


## :material-file: Files / Presets

[//]: # (Files)
??? question "Warum sollte ich die `*.easyConf`-Dateien verwenden, wenn ich die Download-Funktion `*.xml` nutzen kann?" 
    Die `*.xml`-Dateien enthalten nur die Rohwerte der Register. Der neue Dateityp `*.easyConf` enthält alle konfigurierten Einstellungen einschließlich der ursprünglichen Linearisierungswerte und der tatsächlichen Namen/Werte des Durchflussmessers. Dieser Ansatz lässt mehr Raum für die spätere Bearbeitung der Einstellungen. 
    Andererseits enthält die Datei `*.easyConf` nur die auswählbaren Einstellungen. Wenn Sie den kompletten Gerätezustand (mit Grenzwerten, Benutzereingaben, etc.) speichern wollen, sollten Sie eher den Dateityp `*.xml` verwenden.

[//]: # (Dateien)
??? question "Was ist der Unterschied zwischen *.par und *.xml Dateien?<br>Warum kann ich meine *.par Datei nicht importieren?" 
    - Die `*.par` ist ein älterer Dateityp, der von der **OS 3.2**-Benutzersoftware verwendet wird und vor vielen Jahren zur Parametrierung der Anzeige- und F/U-Wandlergeräte eingesetzt wurde. Er ist weder kompatibel noch wird er für die Verwendung mit dem EasyLoader unterstützt. Wenn Sie sie trotzdem öffnen _müssen_, kontaktieren Sie [uns](https://www.vse-flow.com/de/contact-persons.html) für Support.

    - Der Dateityp `*.xml` ist das neue Dateiformat und enthält die Namen und Werte aller Geräteregister. Die ursprünglichen Einstellungen wie "Name des Durchflussmessers, K-Faktor und Linearisierungstabellendaten" sind in dieser Datei nicht enthalten :material-arrow-right-bold: _Verwenden Sie zu diesem Zweck den Typ `*.easyConf`'.

[//]: # (Dateien)
??? question "Ich möchte eine Gerätekonfiguration (```*.easyConf``) offline (ohne Geräteverbindung) erstellen!"
    Gehen Sie auf die Seite **Über Easyloader** und wählen Sie unter dem Menüpunkt ```Einstellungen`` die Option ``Geräteverbindung für *.easyConf-Erstellung simulieren``. Sie werden dann gefragt, welches Gerät Sie simulieren wollen und können mit der Erstellung der Datei mit dem **Easy Configurator** fortfahren.

    Eine ausführlichere Anleitung finden Sie in [diesem Abschnitt](4advanced.md#creating-offline-presets) in diesem Handbuch. 

## :material-current-dc: Spezifikationen / Analogausgang

[//]: # (Specs)
??? question "Was sind die maximalen Eingangsfrequenzen der Geräte?"
    - FU210: $1 \textrm{ MHz}$
    - A350: $1 \textrm{ MHz}$
    - A341: $1 \textrm{ MHz}$

[//]: # (Analog / Specs)
<!--
??? question "What is the reaction time of the analog output?"
    -> Messreihe JK!
-->

[//]: # (Analog / Specs)
??? question "Wie hoch ist die Auflösung des Analogausgangs?"
    - FU210: $16 \textrm{ bit}$
    - A350: $16 \textrm{ bit}$
    - A341: $14 \textrm{ bit}$

    Um die Spannungs-/Stromstufe des Analogausgangs zu berechnen, verwenden Sie die folgende Formel:
    
    $U_{step}=\frac{20 \textrm{ V}}{2^{14}} ca. 1,25 \textrm{ mV}$

    Es gibt keine tatsächliche Änderung der Auflösung/Schritte, wenn Sie den Analogbereich ändern. Der Bereich wird lediglich beschnitten. Wenn Sie also zum Beispiel den Analogausgang von `+/- 10 V` auf `0..10 V` ändern, ist die effektive analoge Auflösung, die Sie für Ihren `0..10 V`-Bereich erhalten, 1 Bit weniger :material-arrow-right-bold: 13 Bit (für den A341).

[//]: # (Analog / Specs)
??? question "Was ist die minimale Reaktions-/Auffrischungszeit des Analogausgangs?"
    Um eine minimale Reaktionszeit zu erreichen, müssen die ``SAMPLING TIME`` und der ``FILTER`` Pegel so niedrig wie möglich sein. Bei optimaler Einstellung können die folgenden Auffrischungsintervalle erreicht werden:

    - FU210 + A341: $ca. 1 \textrm{ ms}$
    - A350: $ca. 20 \textrm{ ms}$

    !!! tip "Anzeige $\neq$ Analogausgang"
        Bei Display-Geräten funktioniert die Aktualisierungszeit des Analogausgangs unabhängig vom konfigurierten Aktualisierungsintervall des Displays.

[//]: # (Analog / Specs)
??? question "Filter - Was ist der Unterschied zwischen dem _gleitenden Mittelwertfilter_ und dem _exponentiellen_ Filter?"
    Man stelle sich eine Stufenfunktion für die Eingabe vor (z. B. $0 \frac{\textrm{l} }{\textrm{min} }$ :material-arrow-right-bold: $10 \frac{\textrm{l} }{\textrm{min} }$), führt der _Filter des gleitenden Mittelwerts_ zu einer linearen Rampenfunktion am Analogausgang. Der _exponentielle Filter_ hingegen erzeugt eine Ausgangsfunktion wie eine Kondensatorladekurve, die sich zunächst schnell auf den neuen Wert zubewegt und sich später langsamer dem Wert nähert. Die resultierende Anstiegszeit des Filters hängt immer von der gewählten `SAMPLING TIME` ab. Mehr über die Funktionsweise des Filters können Sie im Benutzerhandbuch des Geräts nachlesen.

    **Moving average filter**

    ![](img/avg%20a350%2050mssamp.png)`

    **Exponential filter**

    ![](img/exp%20a350.png)

    _(Die gezeigten Bilder zeigen den Analogausgang eines A350 mit einer Abtastzeit von 50 ms und verschiedenen Filtereinstellungen)_

[//]: # (Analog / Specs)
??? question "Filter - Die höchste Filtereinstellung ist für mich nicht ausreichend!"
    Während Sie eine hohe `FILTER`-Einstellung beibehalten, passen Sie die `SAMPLING TIME` nach oben an, bis das gewünschte analoge Ausgangsverhalten/Anzeigeverhalten erreicht ist. Eine Erhöhung der Sampling Time beeinflusst direkt die Dynamik des Filters.

[//]: # (Analog / Specs)
??? question "FU252: Hat der DIL2-Schalter Vorrang vor der Programmierung des Registers ``ANALOGUE MODE```?"
    Dies ist im Benutzerhandbuch des FU252 beschrieben. Bei der Einstellung `00` richtet sich das Format nach dem internen Parameter `ANALOGUE MODE`. Bei allen anderen DIL-Einstellungen ist der Registerwert irrelevant.

[//]: # (Analog / Specs)
??? question "Warum bekomme ich bei niedrigen Durchflussraten so viel Signalrauschen am Analogausgang?"
    Im Allgemeinen liegt das Rauschen auf dem Analogsignal der Geräte im Hochfrequenzbereich. Diese Störungen werden durch die Stromversorgung selbst und durch die internen DC/DC-Wandler verursacht.

    Auch wenn der Rauschanteil auf dem Signal recht gering ist, ist dieser _noise floor_ ständig vorhanden. Es ist daher sinnvoll, den Fullscale-Analogwert an die maximale Durchflussrate Ihrer Anwendung anzupassen, um das beste **Signal-Rausch-Verhältnis** aus Ihrem Analogausgang zu erhalten. Es ist auch immer empfehlenswert, die Kabel kurz und gut abgeschirmt zu halten.

[//]: # (Seltsames Verhalten / Analog)
??? question "Der Analogausgang zeigt 0 V an, obwohl ein Durchfluss vorhanden ist" 
    1. Prüfen Sie, ob Ihre Durchflussrichtung negativ ist. Versuchen Sie, das `Direction`-Register zu ändern, A- und B-Drähte zu vertauschen, den Durchflussmesser zu drehen oder den Schalter am Vorverstärker umzulegen.
    2. Prüfen Sie, ob Sie versehentlich `Quadratur (2 Kanäle)` gewählt haben, obwohl Ihr Flowmeter nur einen Kanal hat.

[//]: # (Specs)
??? question "FU252: Wie ist seine Reaktionszeit und sein Rauschverhalten?"
    **Reaktionszeit:**

    - Die schnellstmögliche Reaktionszeit des FU252 beträgt etwa $150 \textrm{ µs}$. Dies ist die Reaktion auf die gemessene Eingangsfrequenz. Die gesamte Aktualisierungszeit hängt zum einen von der Höhe der Eingangsfrequenz und zum anderen von der $1 \textrm{ ms}$ Zykluszeit der internen Programmverarbeitung des FU252 ab.

    - Weiterhin sollte man hier den Modulationsbereich des FU252 berücksichtigen. In den Problemfällen sind den niedrigen analogen Ausgangswerten auch die niedrigsten Durchflussbereiche bzw. Frequenzbereiche zugeordnet, d.h. die Aktualisierungszeit ist hier abhängig von der Eingangsfrequenz.

    **Rauschverhalten:**

    - Im Allgemeinen liegt das Rauschen auf dem Analogsignal des FU252s im Hochfrequenzbereich. Diese Störungen werden durch die Spannungsversorgung selbst und durch die internen DC/DC-Wandler verursacht. Sie erscheinen als zusätzliche Rauschspannung von $\ca. 20-40 \textrm{ mV}$ auf dem Analogsignal!
   

[//]: # (Specs)
??? question "FU252: Welche Funktion hat das Register `INPUT FILTER`?"
    Der Hardware-Filter wird zum Filtern der Signale verwendet. Es funktioniert, indem es die interne Abtastfrequenz der Signale verändert. Dies kann jedoch zu Aliasing-Effekten führen, die Probleme verursachen können:

    - Höhere Frequenzen als die Abtastfrequenz erscheinen als niedrigere Frequenz.
    - Die ursprüngliche Frequenz kann durch die Abtastfrequenz in ein Vielfaches der Abtastfrequenz geändert werden.

    Dies wird normalerweise zur Spike-Filterung verwendet.

    Hinweis: Verwechseln Sie dies nicht mit den Filtereinstellungen des EasyLoaders!

## :material-lightbulb-question: EasyLoader-spezifische Fragen

[//]: # (Loader WTF)
??? question "Warum ist weniger als die angegebene Anzahl von Linearisierungspunkten verfügbar?<br>Warum wird der Fehler '_zu viele Spalten_' ausgegeben?" 

    Das liegt daran, dass der erste Wert des Linearisierungsregisters immer Null sein muss und der letzte immer der maximal mögliche Wert sein muss. Dadurch wird verhindert, dass der Anzeigewert hängen bleibt, wenn Frequenzen oberhalb der maximal linearisierten Frequenz auftreten, z.B. zur Erkennung von Überlastzuständen. Die anderen angezeigten Eingabefelder können vollständig mit Werten gefüllt werden. Dadurch schrumpft die Anzahl der verfügbaren Kalibrierpunkte um zwei.

    Wenn Sie ein Kalibrierungszertifikat mit mehr als der erlaubten Anzahl von Punkten zur Hand haben, ist es am besten, einige Linearisierungspunkte auszulassen, bei denen die Änderung des $K_{fact}$-Wertes am geringsten ist oder bei denen die Fehlerkurve weitgehend linear ist. 

[//]: # (Loader WTF)
??? question "Die Parametrisierung wird zurückgesetzt / nicht gespeichert, wenn ich die 24 V-Spannung wieder anschließe. Why?"
    Vergewissern Sie sich, dass Sie die Option `Permanent storage` im unteren Optionsmenü im [Geräteparameter-Editor](3features.md#device-parameter-editor) aktiviert haben. Um einen EEPROM-Store-Befehl mit den aktuellen Einstellungen zu senden, drücken Sie einfach den `UPLOAD`-Knopf, wobei die Option `Permanent storage` angekreuzt ist - auch ohne irgendwelche Registeränderungen.

[//]: # (Loader WTF)
??? question "Warum kann ich [...] nicht machen? Die Software vermisst ein Feature!"
    Der EasyLoader ist für eine einfache und grundlegende Konfiguration des Gerätes gedacht. Erweiterte Einstellungen können jederzeit manuell mit dem Parameter-Editor vorgenommen werden. 
    
    Wenn Sie der Meinung sind, dass Ihre Idee auch für andere Benutzer wertvoll ist, können Sie uns gerne einen Feature Request schicken ([:material-link: Ansprechpartner](https://www.vse-flow.com/de/contact-persons.html)).
    
    Alternativ können Sie auch versuchen, die Software OS 10.0 für diesen Zweck zu verwenden. Dabei handelt es sich um eine ältere Software, die auch einen Register-Editor enthält, aber nicht für die einfache Verwendung mit Durchflussmessgeräten spezialisiert ist. Sie kann von unserer Homepage [:material-link: vse-flow.com](https://www.vse-flow.com/de/software.html) heruntergeladen werden.