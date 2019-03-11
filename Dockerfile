# use node distribution to compile our angular app
FROM node:8.11.2-alpine as node
# define current path
WORKDIR /usr/src/app
# copy both, the package.json and the package.lock.json into the image
COPY package*.json ./
#  run npm install to install all dependencies of the project
RUN npm install
# copy the rest of the project into the image
COPY . .
# run the npm build command
RUN npm run build

# Stage 2
FROM nginx:1.13.12-alpine
COPY --from=node /usr/src/app/dist/angular-template-v6 /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf