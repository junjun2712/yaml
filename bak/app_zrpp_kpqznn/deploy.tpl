apiVersion: apps/v1
kind: Deployment
metadata:
  name: app-center
  namespace: test
  labels:
    app: app-center
    
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app-center
      
  template:
    metadata:
      labels:
        app: app-center
        
    spec:
      containers:
      - name: app-center
        image: dockerhub.sihai.com:8081/test/app_center:{time}
        resources:
          requests:
            cpu: 100m
            memory: 200Mi
        ports:
        - containerPort: 9999
       

---
apiVersion: v1
kind: Service
metadata:
  name: app-center
spec:
  selector:
    app: app-center
  ports:
  - port: 9999
    name: app-center
  type: NodePort
