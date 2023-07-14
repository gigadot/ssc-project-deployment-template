Create two folders: backend and frontend in this directory

Order of starting up:

1. mariadb
2. backend
3. frontend
4. proxy

Change needed:
1. mariabdb: must change the variables accordingly
2. backend: must change the variables accordingly. the app file must be named webapp.jar. place the webapp.jar in the backend folder 
3. frontend: place the code for frontend in frontend folder
4. proxy: replace backend_ip and frontend_ip in the proxy/default.conf to match the deployment

You can access your service using your IP address