FROM alpine:latest

WORKDIR /app

RUN apt update
RUN apt install git -y
RUN apt install apt-transport-https curl -y
RUN apt install net-tools
RUN apt update
RUN apt install python3 -y

COPY ./internal_script.sh .

CMD [ "bash" , "./internal_script.sh" ]
