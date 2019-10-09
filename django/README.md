run command
  docker build -t wj-django .
  docker run -dit --name=wj-django --restart=always --network=NETWORK_NAME -v PROJECT_DIR:/root/PROJECT_NAME -p PORT:80 wj-django python /root/PROJECT_NAME/manage.py runserver 0:80

django with kafka:
  curl http://127.0.0.1/accept/producer
  curl http://127.0.0.1/accept/consumer


