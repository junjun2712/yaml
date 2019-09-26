apiVersion: apps/v1
kind: Deployment
metadata:
  name: app-d21
  namespace: test
  labels:
    app: app-d21
    
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app-d21
      
  template:
    metadata:
      labels:
        app: app-d21
        
    spec:
      containers:
      - name: app-d21
        image: dockerhub.sihai.com:8081/test/app_zrpp_d21:{time}
        resources:
          requests:
            cpu: 100m
            memory: 200Mi
        ports:
        - containerPort: 9982
      imagePullSecrets:
      - name: harbor       

---
apiVersion: v1
kind: Service
metadata:
  name: app-d21
  namespace: test
spec:
  selector:
    app: app-d21
  ports:
  - port: 9982
    name: app-d21
  type: NodePort
