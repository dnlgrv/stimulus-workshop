# README

## Requirements

* Ruby 3.1.4
* NodeJS 18.17.1

## Setup

### Local

1. `bin/setup`
2. `bin/rails db:seed`
3. `yarn install`
4. `bin/dev`

### Docker

1. `docker compose build`
2. `docker compose run --rm app bin/rails db:setup`
3. `docker compose up`
