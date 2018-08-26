FROM glauth/glauth:v1.1.0

# Build Metadata
ARG BUILD_DATE
ARG VERSION
ARG VCS_URL
ARG VCS_REF
ARG IMAGE_NAME="ldap-mock"

LABEL maintainer="rickard.lofstrom@gmail.com" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name=$IMAGE_NAME \
    org.label-schema.description="This image provides a mock server for ldap" \
    org.label-schema.vcs-url=$VCS_URL \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vendor="Rickard Löfström" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

# Expose web and LDAP ports
EXPOSE 389 5555

COPY config.cfg /app/config/config.cfg

CMD ["/bin/sh", "/app/docker/start.sh"]
