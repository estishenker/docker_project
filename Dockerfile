FROM python:latest

WORKDIR /app

RUN apt update
RUN apt install git -y
RUN apt install apt-transport-https curl -y
RUN apt install net-tools
RUN apt update

COPY ./internal_script.sh .

CMD [ "bash" , "./internal_script.sh" ]
