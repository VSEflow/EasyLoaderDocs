---
search:
  exclude: true
---

# VSE EasyLoader Software

## Was ist VSE EasyLoader?

### Motivation

!!! rocket inline end "Schnellstart"
    Für einen schnellen Einstieg können Sie [hier](2basics.md#configuration-workflow) nachlesen, wie Sie eine Beispielkonfiguration erstellen können.

Die EasyLoader Software wurde entwickelt, um die Parametrierung der VSE Durchflussauswertegeräte A341, A350, FU252 und FU210 zu vereinfachen. Da viele verschiedene Berechnungen erforderlich sind, um die richtigen Einstellungen für diese Geräte manuell zu berechnen, wird der Parametrierungsprozess normalerweise von VSE durchgeführt. Mit dem EasyLoader erhält der Kunde ein einfaches Werkzeug, um das Gerät mit einem wählbaren Volumensensor-Typ einzurichten und die Konfiguration in das Gerät zu laden. Zusätzliche Optionen wie analoge Skalierung, Filterstufen und Linearisierung sind ebenfalls über die Software änderbar. 

Der EasyLoader stellt die (_imaginäre_) Brücke zwischen den _einfach zu konfigurierenden_ Einstellungen des Volumensensors und den Registerwerten des Geräts dar. Auch wenn die Berechnung der Geräteregister teilweise im Benutzerhandbuch des jeweiligen Geräts beschrieben ist, ist es sehr mühsam, dies von Hand zu tun.

### Hauptfunktionen
EasyLoader bietet die folgenden Hauptfunktionen:

* Einfaches Windows-Tool zur Verbindung mit den VSE-Auswerteeinheiten
* Speziell auf die Volumensensoren von VSE zugeschnitten (integrierte Volumensensor-Datenbank)
* Unterstützung für A341-28, A350-28 und FU210-28 (keine Unterstützung für ältere FU252-28 in `v6.0`)
* Einfache Konfiguration der Einstellungen mit nur wenigen Eingabefeldern
* Integrierte Formeln und Berechnungen für alle Geräte
* Neuer Register-Editor für fortgeschrittene Benutzer (mit Such- und Filterfunktionen)
* Copy-Paste-Eingabe von Kalibrierdaten
* Eingebettete Anschlussdiagramme und Bedienungsanleitungen
* Live-Auslesung der aktuellen Messwerte
* Up-/Download von `*.xml`-Dateien
* Speichern/Wiederherstellen von Konfigurationsvoreinstellungen (`*.easyConf`)


### Software-Download
VSE EasyLoader ist kostenlos erhältlich. Während ältere Versionen `<=v5.9` als eigenständige ausführbare Dateien vorliegen, muss die neueste Version `v6.0` mittels eines msi-Installer-Paketes installiert werden (für die Installation sind __keine__ Admin-Rechte erforderlich). Beide Softwareversionen können von unserer Homepage [:material-link: vse-flow.com](https://www.vse-flow.com/en/downloads.html?scrollTo=software) heruntergeladen werden.


## Struktur

Diese Dokumentation gliedert sich in die folgenden Hauptkapitel:

* [Erste Schritte](2basics.md) erklärt, wie man ein Gerät anschließt und wie der Konfigurationsablauf funktioniert
* [Features](3features.md) beschreibt alle verfügbaren Programmfunktionen im Detail
* [Sonderfunktionen](4advanced.md) enthält die Dokumentation der komplizierteren Zusatzfunktionen
<!---
* [Register Reference](4devregs.md) erklärt die Funktionsweise wichtiger Geräteregister und wie sie berechnet werden
* [Up-/Download](5updownload.md) zeigt, wie die XML-Up-/Download-Funktionalität funktioniert
-->
* [FAQs](6faqs.md) zeigt, wie man die am häufigsten gestellten Fragen und Probleme lösen kann

## Lizenzinformationen

Haftungsausschlüsse und Lizenzinformationen der verwendeten Softwarekomponenten finden Sie im Abschnitt [About](7about.md).

Übersetzt mit DeepL.com (kostenlose Version)