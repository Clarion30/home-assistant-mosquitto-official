#!/bin/sh
set -e

mkdir -p /mosquitto/config /mosquitto/data

USERNAME="$(sed -n 's/.*"username"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' /data/options.json)"
PASSWORD="$(sed -n 's/.*"password"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' /data/options.json)"
DEBUG="$(sed -n 's/.*"debug"[[:space:]]*:[[:space:]]*\(true\|false\).*/\1/p' /data/options.json)"

if [ -z "$USERNAME" ] || [ -z "$PASSWORD" ]; then
  echo "FEHLER: MQTT-Benutzer oder Passwort fehlt."
  exit 1
fi

if [ "$DEBUG" = "true" ]; then
  LOG_TYPES="log_type all"
  echo "Mosquitto-Debugprotokollierung ist eingeschaltet."
else
  LOG_TYPES="log_type error
log_type warning
log_type notice
log_type information"
  echo "Mosquitto-Debugprotokollierung ist ausgeschaltet."
fi

mosquitto_passwd -b -c /mosquitto/config/passwd "$USERNAME" "$PASSWORD"

chown mosquitto:mosquitto /mosquitto/config/passwd
chmod 600 /mosquitto/config/passwd
chown -R mosquitto:mosquitto /mosquitto/data

cat > /mosquitto/config/mosquitto.conf <<EOC
listener 1883 0.0.0.0
protocol mqtt

allow_anonymous false
password_file /mosquitto/config/passwd

persistence true
persistence_location /mosquitto/data/

log_dest stdout
log_timestamp true
log_timestamp_format %Y-%m-%d %H:%M:%S
connection_messages true

${LOG_TYPES}
EOC

echo "Starte Eclipse Mosquitto 2.1.2 auf Port 1883."
exec mosquitto -c /mosquitto/config/mosquitto.conf
