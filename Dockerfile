FROM fedora:31

RUN sed -i 's/tsflags=nodocs/tsflags=/' /etc/dnf/dnf.conf
RUN dnf install -y \
  fd-find httpie man-db procps ripgrep vim which \
  iputils iproute mtr net-tools socat \
  python3 python3-pip pipenv python3-boto3 \
  nodejs \
  awscli \
  openssh-clients openssh-server
ENV SHELL=/usr/bin/bash
RUN npm install -g pm2
RUN pm2 completion install

COPY ./root/ /

CMD /entrypoint.sh
