FROM nginx:latest

WORKDIR /usr/share/nginx
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/faahim/happy-birthday.git
RUN mv html html2
RUN mv happy-birthday html
COPY ./file/customize.json /usr/share/nginx/html
COPY ./file/lala.png /usr/share/nginx/html/img