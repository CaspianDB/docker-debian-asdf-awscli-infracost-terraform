## $ docker build --tag caspiandb/debian-asdf-awscli-infracost-terraform --squash .

ARG DEBIAN_ASDF_TAG=latest

FROM caspiandb/debian-asdf:${DEBIAN_ASDF_TAG}

COPY .tool-versions /root/

RUN apt-get -q -y update
RUN apt-get -q -y --no-install-recommends install \
  bzip2 git-lfs gnupg groff-base jq openssh-client procps pv xz-utils

ADD https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /usr/local/share/ca-certificates/global-bundle.crt

RUN update-ca-certificates

ADD https://raw.githubusercontent.com/dex4er/tf/main/tf.sh /usr/local/bin/tf
RUN chmod +x /usr/local/bin/tf

RUN while read -r plugin _version; do asdf plugin add "$plugin"; done < .tool-versions
RUN asdf install

RUN apt-get -q -y autoremove
RUN find /var/cache/apt /var/lib/apt/lists /var/log -type f -delete

RUN asdf list
