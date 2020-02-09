
FROM maciekkolesnik/janus-pi:v3


# file maintainer author
MAINTAINER maciek kolesnik <maciek@kolesnik.org>

# docker build environments
ENV CONFIG_PATH="/opt/janus/etc/janus"


USER janus

CMD ["/opt/janus/bin/janus"]

