# gofabric8

docker run -ti --name gcloud-config yurifl/gcloud gcloud init
docker run --rm -ti --volumes-from gcloud-config yurifl/gcloud gcloud beta auth application-default login
docker-compose run --rm gofabric8 --help

# Use?
Don't, not working

# Reference
https://fabric8.io/guide/getStarted/kubernetes.html
