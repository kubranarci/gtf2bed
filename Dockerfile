FROM ubuntu:latest
RUN apt-get update 
RUN apt-get -y install git


RUN git clone https://github.com/kubranarci/gtf2bed.git
WORKDIR /gtf2bed
COPY Dockerfile /gtf2bed
MAINTAINER Kubra Narci, Seven Bridges, <kubra.narci@sbgenomics.com>
