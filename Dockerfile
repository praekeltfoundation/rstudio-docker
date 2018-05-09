FROM rocker/rstudio

RUN apt-get-install.sh \
    zlib1g-dev \
    libpq-dev \
    postgresql \
    postgresql-contrib \
    xml2 \
    libxml2-dev \
    libsm-dev \
    libxt-dev

RUN Rscript install.R

# TODO: add CMD
