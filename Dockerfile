FROM ubuntu:19.04
RUN apt-get update && apt-get install -y python \
  python-lxml \
  python-numpy \
  python-pip \
  python-qt4 \
  python-six
RUN pip install --upgrade pip \
  ete3 \
  jupyter \
  pandas \
  xlrd \
  ncbi-genome-download
CMD echo 'You are ready to run "The Phylogenetic Tree of Plastic Degraders"'


