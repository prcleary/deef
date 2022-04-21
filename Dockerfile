# Shiny Server

FROM quantumobject/docker-shiny:latest

MAINTAINER Paul Cleary (drprcleary@gmail.com)

RUN apt-get update && apt-get install -y libcairo2-dev curl libssl-dev libcurl4-openssl-dev libproj-dev libgdal-dev libgeos-dev libssl-dev libgl1-mesa-dev libglu1-mesa-dev libudunits2-dev libxt-dev libv8-dev libssl-dev \
    && apt-get clean 

RUN Rscript -e "install.packages(c( 'Cairo', 'checkpoint', 'shiny', 'DT', 'lubridate', 'scales', 'ggplot2', 'RColorBrewer', 'shinyjs', 'shinythemes', 'ggthemes', 'stringr', 'data.table', 'stringr', 'XML', 'xml2', 'colourpicker'), repos='https://cran.rstudio.com/')"

RUN mkdir /srv/shiny-server/deef

COPY ./*.[rR] /srv/shiny-server/deef/

RUN chown -R shiny /srv/shiny-server/
RUN chown -R shiny /var/lib/shiny-server/

USER 997

LABEL io.openshift.expose-services="8080:http"

CMD ["R", "-e", "shiny::runApp( '/srv/shiny-server/deef', host = '0.0.0.0', port = 3838)"]
