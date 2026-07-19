# Mosquitto Official – Dokumentation

## Verwendung

Die App stellt einen MQTT-Broker auf Port 1883 der Home-Assistant-IP bereit.

## Konfiguration

### username

MQTT-Benutzername. Standardwert: `mqtt`

### password

Passwort für den MQTT-Benutzer. Das Passwort muss gesetzt sein.

### debug

Schaltet die ausführliche Mosquitto-Protokollierung ein oder aus.

Bei `false` werden normale Informations-, Warn- und Fehlermeldungen angezeigt.

Bei `true` verwendet Mosquitto `log_type all`.

## Wichtiger Hinweis

Das reguläre Home-Assistant-Mosquitto-Add-on darf nicht gleichzeitig laufen. Beide MQTT-Broker würden Port 1883 der Home-Assistant-IP verwenden.

## Diagnose

Für eine ausführliche Fehlersuche kann vorübergehend `debug: true` gesetzt werden. Nach der Diagnose sollte Debug wieder ausgeschaltet werden.
