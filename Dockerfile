FROM node:10.15.3

EXPOSE 3000
WORKDIR /app

COPY package.json yarn.lock /app/
RUN mkdir /app/src
ADD src /app/src
RUN yarn \
  && yarn build-production
CMD yarn start
