FROM node:alpine as build
WORKDIR /frontend
COPY package.json /frontend
RUN npm install --silent
COPY . /frontend
RUN npm run build

FROM nginx
COPY --from=build  /frontend/build /usr/share/nginx/html
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]