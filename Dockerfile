FROM ubuntu:18.04
LABEL maintainer="Strongbrent"

ARG USER

# Install Dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        sudo \
        curl \
        wget \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

# Create test user and add to sudoers
RUN useradd -m -s /bin/bash ${USER}
RUN usermod -aG sudo ${USER}
RUN echo "${USER}   ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# Switch to testuser
USER ${USER}
ENV HOME /home/${USER}

# Change working directory
WORKDIR /home/${USER}

CMD ["/bin/bash"]
