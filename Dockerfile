FROM strapi/base

WORKDIR /app

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm install

COPY . .

ENV NODE_ENV production

RUN npm run build

RUN ls

EXPOSE 1337

CMD ["npm", "start"]
