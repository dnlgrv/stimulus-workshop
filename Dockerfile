FROM timbru31/ruby-node:3.1-18

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock .
RUN bundle install

COPY package.json yarn.lock .
RUN npm install -g yarn
RUN yarn install
