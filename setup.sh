minikube delete
minikube start --vm-driver virtualbox --disk-size 5GB
eval $(minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
minikube dashboard &
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