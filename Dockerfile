FROM rocker/rstudio

RUN Apt-get install zlib1g-dev, libpq-dev, postgresql,  postgresql-contrib,xml2,libxml2-dev,libsm-dev,libxt-dev
RUN Rscript install.R

# TODO: add CMD
