## TRY TO USE BASE IMAGE
FROM node:14-alpine 

## Set Working Directory to /app
WORKDIR /app

## Copy all source code to image
COPY . .

## Add env element to image
ENV NODE_ENV=production DB_HOST=item-db

## Running some command to install and wrapped application for production purpose
RUN npm install --production --unsafe-perm && npm run build

## Running command to start the application
CMD ["npm", "start"]

## Expose port 8080 to outside, because the app is running on that port
EXPOSE 8080
