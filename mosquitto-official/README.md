# Mosquitto Community Broker

Lokaler MQTT-Broker für Home Assistant auf Grundlage des offiziellen Eclipse-Mosquitto-Docker-Images.

## Eigenschaften

- Eclipse Mosquitto 2.1.2
- MQTT-Port 1883
- Benutzer- und Passwortschutz
- Persistente MQTT-Daten
- Ein- und ausschaltbare Debugprotokollierung
- Geeignet für ESPHome und Home Assistant

Diese lokale App wurde eingerichtet, weil beim regulären Home-Assistant-Mosquitto-Add-on ein reproduzierbarer MQTT-Protokollfehler mit ESPHome und QoS 2 auftrat.

## Hinweis

Dies ist eine inoffizielle Community-App für Home Assistant.

Sie ist nicht mit der Eclipse Foundation, dem Eclipse-Mosquitto-Projekt
oder dem Home-Assistant-Projekt verbunden und wird von diesen nicht
unterstützt oder offiziell empfohlen.

Mosquitto und Eclipse Mosquitto sind Bezeichnungen des jeweiligen
Eclipse-Projekts. Diese App verwendet das öffentlich bereitgestellte
Docker-Image `eclipse-mosquitto`.
