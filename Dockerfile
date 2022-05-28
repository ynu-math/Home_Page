FROM ubuntu:20.04

RUN apt update && apt install -y build-essential && apt install -y curl 

RUN apt install -y ruby-full && gem install bundler

RUN apt install -y vim && echo 6 79 | apt install -y git

RUN git clone https://github.com/ynu-math/Home_Page.git && cd ./Home_Page && bundle install --full-index && cd .. && rm -r Home_Page

EXPOSE 4000

CMD bash 