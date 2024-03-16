FROM node:18-alpine
WORKDIR /src
COPY package*.json ./

RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh


RUN npm install
COPY ./*.js ./
CMD ["npm", "run", "start"]
