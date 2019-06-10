FROM ubuntu:14.04

RUN apt-get update -y -qq
RUN apt-get install git -y -qq
RUN useradd -ms /bin/bash govuk
RUN mkdir /var/govuk
RUN apt-get install sudo -y -qq
RUN adduser govuk sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
COPY --chown=govuk:govuk repos /var/govuk/

RUN git clone https://github.com/alphagov/govuk-puppet.git /var/govuk/govuk-puppet
RUN sudo chown -R govuk:govuk /var/govuk/govuk-puppet
RUN apt-get install puppet -y -qq
RUN apt-get install build-essential libxml2-dev libxslt1-dev ruby-dev ruby-build -y -qq

USER govuk

COPY --chown=govuk:govuk setupimage-1.sh /home/govuk/
RUN /home/govuk/setupimage-1.sh

COPY --chown=govuk:govuk setupimage-2.sh /home/govuk/
RUN /bin/bash -c /home/govuk/setupimage-2.sh

COPY --chown=govuk:govuk setupimage-3.sh /home/govuk/
RUN /bin/bash -c /home/govuk/setupimage-3.sh

COPY --chown=govuk:govuk setupimage-4.sh /home/govuk/
RUN /bin/bash -c /home/govuk/setupimage-4.sh

COPY --chown=govuk:govuk setupimage-5.sh /home/govuk/
RUN /bin/bash -c /home/govuk/setupimage-5.sh

COPY puppet.conf /etc/puppet/puppet.conf

COPY --chown=govuk:govuk usr-share-puppet.tgz /home/govuk/

COPY --chown=govuk:govuk setupimage-6.sh /home/govuk/
RUN /bin/bash -c /home/govuk/setupimage-6.sh

COPY --chown=govuk:govuk setupimage-7.sh /home/govuk/

#USER govuk
