1)run nginx pod 

&nbsp;	using config map to change the port 80 to be 82 

&nbsp;	using pv and pvc to map the index.html from our cluster host 

&nbsp;	map it to a service clusterip 

&nbsp;	try to curl it from another nginx port curl PodIp:80 and curl ClusterIp



2)run mysql 

&nbsp;	using password in secret

&nbsp;	try to access it ussing the password that you passed it to a secret 

&nbsp;	



3)run deployment 

&nbsp;	try to delete one pod and tell what happend

&nbsp;	and tell the differance between the replicasets and deployments

&nbsp;	

4)run two container into a pod 

&nbsp;	one listen to port 80 

&nbsp;	other using configmap  to change port to 50 

&nbsp;	change the index.html from firs container and change the second one 

&nbsp;	map them to a service

&nbsp;	

&nbsp;	

5)try to limit the namespace

&nbsp;	crete namespace named depi 

&nbsp;	limit it to on pod and one deploy 

&nbsp;	try to create 1 deployment with 3 replicas 

&nbsp;	show mw when you type kubectl get pods 	

--------------------------------------------------

#      	     *DEADLINE*

#  	     *-----------------*

# 	     *| WED 17/9 BY 12PM |*

#  	     *-----------------*