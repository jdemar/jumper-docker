FROM python:2.7-stretch
RUN pip install jumper

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa

RUN apt-get update && apt-get install -y gcc-arm-embedded

RUN apt-get clean && \
  rm -rf /var/lib/apt
