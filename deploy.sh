
pip install fandogh-cli --upgrade
fandogh login --username $FANDOGH_USERNAME --password $FANDOGH_PASSWORD
fandogh namespace active --name $FANDOGH_NAMESPACE

#fandogh service deploy --image razear/mega-electric-nginx --version $SHA --name mega-electric-nginx -p 80 -d
fandogh service apply -f nginx-deployment.yml  \
                 -p SHA=$SHA