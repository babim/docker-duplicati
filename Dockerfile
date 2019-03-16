FROM mono:5-slim
ENV MONO_EXTERNAL_ENCODINGS UTF-8

# Download option
RUN apt-get update && \
    apt-get install -y wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh

# copyright and timezone
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/copyright.sh | bash

# install
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20Duplicati%20install/install.sh | bash

# Define mountable directories.
VOLUME ["/root/.config/Duplicati", "/data"]

EXPOSE 8200

ENTRYPOINT ["/start.sh"]

