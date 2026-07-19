# Mosquitto Official

Lokaler MQTT-Broker für Home Assistant auf Grundlage des offiziellen Eclipse-Mosquitto-Docker-Images.

## Eigenschaften

- Eclipse Mosquitto 2.1.2
- MQTT-Port 1883
- Benutzer- und Passwortschutz
- Persistente MQTT-Daten
- Ein- und ausschaltbare Debugprotokollierung
- Geeignet für ESPHome und Home Assistant

Diese lokale App wurde eingerichtet, weil beim regulären Home-Assistant-Mosquitto-Add-on ein reproduzierbarer MQTT-Protokollfehler mit ESPHome und QoS 2 auftrat.
