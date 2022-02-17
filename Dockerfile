#    This file is part of pathology-signatures.
#    Copyright (C) 2022  Emir Turkes, UK DRI at UCL
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    Emir Turkes can be contacted at emir.turkes@eturkes.com

FROM rocker/rstudio:4.1.2

LABEL org.opencontainers.image.authors="Emir Turkes emir.turkes@eturkes.com"

RUN Rscript \
    -e "install.packages('conflicted')" \
    -e "install.packages('knitr')" \
    -e "install.packages('rmarkdown')" \
    -e "install.packages('markdown')" \
 && rm -Rf \
    /tmp/downloaded_packages/ \
    /tmp/*.rds
