# ns
kubectl create ns kubeless

# Core kubeless
kubectl create -f https://github.com/kubeless/kubeless/releases/download/v1.0.3/kubeless-openshift-v1.0.3.yaml

# UI
kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless-ui/master/k8s.yaml

# Prometheus
kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless/master/manifests/monitoring/prometheus.yaml

# Grafana
kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless/master/manifests/monitoring/grafana-configmap.yaml
kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless/master/manifests/monitoring/grafana-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless/master/manifests/monitoring/grafana-job.yaml
kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless/master/manifests/monitoring/grafana-service.yaml

#Routes
kubectl --namespace=kubeless create -f ./kubeless-ui-route.yaml

kubectl --namespace=monitoring create -f ./prometheus-route.yaml
kubectl --namespace=monitoring create -f ./grafana-route.yaml


#you can now go to https://kubeless.vagrant.f8 to make functions or use the cli
# and monitor the results in https://grafana.vagrant.f8 if you load kubeless-grafana-dashboard.json via grafana ui