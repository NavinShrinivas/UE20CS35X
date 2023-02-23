## Details : 
- Name : P K Navin Shrinivas
- Section : D 
- SRN : PES2UG20CS237 
## Pre setup 
- Install kubectl and minikube 
```bash
sudo pacman -S kubectl minikube
```
- Start docker 
```bash
sudo systemctl start docker
```
- Run minikube : 
```bash
minikube start
```
## Task 1 : Deployments
- Screenshot of `minikube start` [1a] : 
![[Pasted image 20230223182900.png]]
## Task 2 : Deployments
- One can use `get` in kubectl to see various componenets [2a]: 
![[Pasted image 20230223183052.png]]
- We create prods through deplyment, here is a minimal way to do it [2b]:
![[Pasted image 20230223183318.png]]
- We can now see the created deployment and pods [2c]:
![[Pasted image 20230223183419.png]]
- As mentioned in k8s docs, deploment in turn use `ReplicaSet` to spawn and manage pods. In the minimal command for deployment, replicaset is set to 1. Can been seen here in screenshot :
![[Pasted image 20230223183628.png]]
- You can also see all details of the deployment using `kubectl describe deplyment pes2ug20cs237` : 
![[Pasted image 20230223184238.png]]
- As we had previously create a minimal deployment, we would like to modify it, you can do so by `export EDITOR=vim && kubectl edit deployment pes2ug20cs237` [2d]:
![[Pasted image 20230223184727.png]]
- Screenshot [2e] : 
![[Pasted image 20230223184857.png]]
- Let's first see that the new deploment has been rolled out and then undo it [2f] : 
![[Pasted image 20230223185007.png]]
![[Pasted image 20230223185055.png]]
- We can also again check to see if the rollout undo has worked or not [2g] :  ![[Pasted image 20230223185155.png]]
## Task 3 : Pods
- Get your pod name and let's use that to debug the pod [3a] : 
![[Pasted image 20230223185904.png]]
- We can also see all the state changes that may have occured right after a new rollout [3b] : ![[Pasted image 20230223185950.png]]
- It is also possible to debug by interacting with the pod [3c] : 
> [!info] You have to create another deployment with mongo images to actually get an interactive shell. 

![[Pasted image 20230223191212.png]]
- delete all the deployments and use pod logs to see it happen [3d]: 
![[Pasted image 20230223191344.png]]
## Task 4 : Manual deployments and scaling 
- We have so far been using an minimal command to create deplyments, we can write a config file with all the flags before hand, create a new dir and create the following files [4a] :
**nginx-deployment.yaml :**
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment-pes1ug20cs237
  labels:
    app: nginx ## The metadata of this Deployment will hold this app name
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx ## This replicaSet can handle all services with app name as nginx
  template: ## Template of the actual pod to be deployed.
    metadata:
      labels:
        app: nginx 
    spec:
      containers:
      - name: nginx
        image: nginx:1.22
        ports:
        - containerPort: 80
```
![[Pasted image 20230223192738.png]]
- Now try updating the config file and reapplyign it, you should see the changes show up : 
![[Pasted image 20230223193112.png]]
- You can view the deployment details like so [4b] : 
![[Pasted image 20230223193803.png]]
## Task 5 : ReplicaSet behaviours 
- Replicaset will autmatically delete and create pods to match the requirement! They use heartbreats to detect changes.
- Lets delete pods and see this [5a] : 
![[Pasted image 20230223194248.png]]
## Task 6 : Connecting service to deployments 
- Services are an asbtration of pods and describe how to access them.
- The way service targets pods is the same as replicaset, using `selector`
- Let's create a new folder and make a new service file : 
**nginx-service.yaml :**
```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-service-pes2ug10cs237
spec:
  selector:
    app: nginx
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 80
```
- We can apply the service and see the following [6a] : 
![[Pasted image 20230223195838.png]]
- What is cool here is those ip addresses in the above image are the ones of the nginx pods from the deployments, we can see this like so [6b] : 
![[Pasted image 20230223200011.png]]
## Task 7 : Port forwarding
- We can portforward any port to the service manually like so [7a]:
![[Pasted image 20230223213024.png]]
> [!info] The service exposes 8080 which redirects to 80 in pods. We are exposing 8080 of service to 8080 of host. Hence 8080->80

- Here is the access of the webpage on localhost [7b]:
![[Pasted image 20230223213133.png]]
## Task 8 : Clean up 
- Lets first delete our deployments and services [8a]:
![[Pasted image 20230223213421.png]]
- Now we can stop minikube [8b]:
![[Pasted image 20230223213526.png]]
## Task 9 : Self task 
- Start your minikube cluster once again.
- Lets once again create an nginx deployment, the default deployment will do.
![[Pasted image 20230223220750.png]] 
- Now create a NodePort service with target port as 80 [9a] : 
![[Pasted image 20230223220821.png]]
- We can now see the ports exposed in the service as so [9b] :
![[Pasted image 20230223221058.png]]
> [!info] In the above ports : `Port` is the port through which other serives in the name space can access this pod. TargetPort is the port that is accessed in the pod when a requests is come in. Node port is mean to external access.

- One can check the minikube ip address as so [9c]: 
![[Pasted image 20230223220856.png]]
- And now try opening the minikube ip address with the Nodeport port, like so [9d]:
![[Pasted image 20230223221400.png]]