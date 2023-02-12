FROM rocker/rstudio

RUN apt -y update
RUN apt -y install

RUN R -e "install.packages('remotes')"
RUN R -e 'remotes::install_version("leaflet", "2.1.1")'
# RUN R -e 'remotes::install_version("devtools", "1.11.0")