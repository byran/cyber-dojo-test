FROM       cyberdojofoundation/web:1.11.0
MAINTAINER Byran Wills-Heath <byran@adgico.co.uk>

USER root

COPY image-scripts/*.sh /
RUN /install.sh

CMD /start.sh
