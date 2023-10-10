FROM nginx:latest

RUN apt-get update && apt-get install -y bash

COPY ./build .

RUN chmod +x init.sh

ENTRYPOINT ["/init.sh"]