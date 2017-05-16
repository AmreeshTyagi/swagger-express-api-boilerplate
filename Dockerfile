FROM node:7.9.0

MAINTAINER Amreesh Tyagi <tyagi.amreesh@gmail.com> <https://github.com/AmreeshTyagi>

RUN mkdir -p /app

WORKDIR /app

ADD package.json /app/

RUN npm install

RUN npm install -g pm2

COPY . /app/

EXPOSE 3000

CMD ["pm2", "start", "processes.json", "--no-daemon"]
