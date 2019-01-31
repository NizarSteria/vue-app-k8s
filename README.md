# vue-app-k8s

> Sample Dockerised vue app deployed on Kubernetes

## Build Setup

``` bash
# install dependencies
yarn install

# serve with hot reload at localhost:8080
yarn run dev

# build for production with minification
yarn run build

# build for production and view the bundle analyzer report
yarn run build --report

# run unit tests
yarn run unit

# run e2e tests
yarn run e2e

# run all tests
yarn test
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

# DOCKER
``` bash
# build
docker build -t harounaouissaoui/vue-app:v1 .
# RUN
docker run -d -p 8080:80 harounaouissaoui/vue-app:v1
# Tag and push
docker login
docker tag harounaouissaoui/vue-app:v1 vue-app
docker push YOUR_DOCKERHUB_NAME/vue-app
```

# KUBERNETES
``` bash
# Start the pod as
 kubectl create -f kube-vue.yaml
 kubectl get pods
 kubectl get deployments
 minikube service angular-service

```
