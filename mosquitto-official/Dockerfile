ARG BUILD_VERSION

FROM eclipse-mosquitto:2.1.2-alpine

LABEL \
  io.hass.name="Mosquitto Official Test" \
  io.hass.description="Official Eclipse Mosquitto 2.1.2" \
  io.hass.type="addon" \
  io.hass.version="${BUILD_VERSION}"

COPY run.sh /run.sh
RUN chmod 755 /run.sh

ENTRYPOINT ["/run.sh"]
