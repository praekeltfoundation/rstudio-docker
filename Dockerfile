FROM rocker/rstudio

RUN apt-get-install.sh \
    libpq-dev \
    libsm-dev \
    libxml2-dev \
    libxt-dev \
    postgresql \
    postgresql-contrib \
    xml2 \
    zlib1g-dev

RUN Rscript install.R

# TODO: add CMD
