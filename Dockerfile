FROM python:2.7-onbuild
LABEL maintainer=owensengoku

ARG UID=1001
ARG GID=1001

RUN groupadd -g $GID -r pyrunner \
   && useradd -c 'Python runner' -u $UID -m -d /home/pyrunner -s /bin/bash -g pyrunner pyrunner 

USER pyrunner

ENV REFRESHED_AT 2018-08-29T17:45
CMD [ "python", "./simpleservice.py" ]