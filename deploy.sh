docker build -t razear/mega-electric-nginx:latest -t razear/mega-electric-nginx:$SHA -f Dockerfile .


docker push razear/mega-electric-nginx:latest
docker push razear/mega-electric-nginx:$SHA

fandogh service deploy --image razear/mega-electric-nginx --version latest --name mega-electric-nginx -p 80 -d