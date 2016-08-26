FROM node:6-slim

ENV APP_ROOT /app

RUN apt-get update && apt-get install libpng12-0


RUN mkdir -p $APP_ROOT
ADD package.json $APP_ROOT/package.json
RUN npm install
ADD . $APP_ROOT

WORKDIR $APP_ROOT

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

