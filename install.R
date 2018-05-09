#!/usr/bin/Rscript

# ref https://gist.github.com/stevenworthington/3178163
install_missing_packages_from <- function(wanted.packages){
    new.packages <- wanted.packages[!(wanted.packages %in% installed.packages()[, "Package"])]
    if (length(new.pkg))
        install.packages(new.pkg, dependencies = TRUE)
}

packages.to.install <- scan('packages.txt', character(), quote="")

install_missing_packages_from(packages.to.install)
