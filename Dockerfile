FROM node

WORKDIR /home/node/app

COPY . /home/node/app

ENV NODE_ENV=development

RUN npm i
RUN npm run build

ENV NODE_ENV=production

CMD ["npm", "run", "prod"]

EXPOSE 80