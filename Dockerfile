FROM node:lts-alpine

RUN npm install -g @vue/cli-service-global

ENV CHOKIDAR_USEPOLLING=true

# RUN mkdir /app

# WORKDIR /app

# COPY package*.json ./

# RUN npm install

# RUN npm install vue-loader --save-dev

# COPY . .

# RUN npm run build