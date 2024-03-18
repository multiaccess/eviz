FROM grafana/grafana:10.0.3

## Set Grafana options
ENV GF_ENABLE_GZIP=true
ENV GF_USERS_DEFAULT_THEME=light

COPY entrypoint.sh /


##################################################################
## Customization depends on the Grafana version
## May work or not work for the version different from the current
## Check GitHub file history for the previous Grafana versions
##################################################################
USER root

# Add the chmod command to make /entrypoint.sh executable
RUN chmod +x /entrypoint.sh

##################################################################
## VISUAL
##################################################################

## Replace Favicon and Apple Touch
COPY img/fav32.png /usr/share/grafana/public/img/fav32.png
COPY img/fav32.png /usr/share/grafana/public/img/apple-touch-icon.png

## Replace Logo
COPY img/logo32.svg /usr/share/grafana/public/img/grafana_icon.svg

## Update Background
#COPY img/background.svg /usr/share/grafana/public/img/g8_login_light.svg

## Update Title
RUN find /usr/share/grafana/public/build/ -name *.js -exec sed -i 's|AppTitle="Grafana"|AppTitle="JAD"|g' {} \;

## Update Login Title
RUN find /usr/share/grafana/public/build/ -name *.js -exec sed -i 's|LoginTitle="Welcome to Grafana"|LoginTitle="Welcome to JAD-eviz Grafana"|g' {} \;

USER grafana

## Entrypoint
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
