minikube config set memory 3072
export MINIKUBE_HOME=/goinfre/hmoumani/ft_services
minikube delete
minikube start --vm-driver virtualbox --disk-size 15GB
eval $(minikube docker-env)
minikube addons enable metrics-server
minikube dashboard &
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f ./SRCS/metalLB/metallb.yaml
docker build SRCS/nginx/ -t nginx-local
kubectl apply -f ./SRCS/nginx/SRCS/nginx-deployment.yaml
kubectl apply -f ./SRCS/nginx/SRCS/nginx-service.yaml
docker build SRCS/mysql/ -t mysql-local
kubectl apply -f ./SRCS/mysql/SRCS/pvc.yaml
kubectl apply -f ./SRCS/mysql/SRCS/mysql-deployment.yaml
kubectl apply -f ./SRCS/mysql/SRCS/mysql-service.yaml
docker build SRCS/phpmyadmin/ -t phpmyadmin-local
kubectl apply -f ./SRCS/phpmyadmin/SRCS/phpmyadmin-deployment.yaml
kubectl apply -f ./SRCS/phpmyadmin/SRCS/phpmyadmin-service.yaml
docker build SRCS/wordpress/ -t wordpress-local
kubectl apply -f ./SRCS/wordpress/SRCS/wordpress-deployment.yaml
kubectl apply -f ./SRCS/wordpress/SRCS/wordpress-service.yaml
docker build SRCS/influxdb/ -t influxdb-local
kubectl apply -f ./SRCS/influxdb/SRCS/influxdb-deployment.yaml
kubectl apply -f ./SRCS/influxdb/SRCS/influxdb-service.yaml
kubectl apply -f ./SRCS/influxdb/SRCS/pvc.yaml
docker build SRCS/grafana/ -t grafana-local
kubectl apply -f ./SRCS/grafana/SRCS/grafana-deployment.yaml
kubectl apply -f ./SRCS/grafana/SRCS/grafana-service.yaml
docker build SRCS/ftps/ -t ftps-local
kubectl apply -f ./SRCS/ftps/SRCS/ftps-deployment.yaml
kubectl apply -f ./SRCS/ftps/SRCS/ftps-service.yaml