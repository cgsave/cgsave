# CGSave

[中文](https://github.com/cgsave/cgsave/blob/master/README_cn.md)

Social bookmarks website for cgers. Alternative to delicious, cgnews, pocket. 
cgsave is the open source software which powers [cgsave.com](https://cgsave.com)

[![CI](https://github.com/cgsave/cgsave/workflows/CI/badge.svg)](https://github.com/cgsave/cgsave/actions)

## Dependency

* Postgresql 12
* Rails 6
* Stimulusjs 
* Turbolinks 5
* rails-ujs
* imagemagic
* redis


## Setup local

* [PG extension install](https://github.com/cgsave/cgsave/blob/master/pg_extension.md)
* rails db:create
* rails db:migrate
* rails db:seed_fu

## Deployment

* Nginx conf sync: bundle exec cap production puma:nginx_config 
* sidekiq install: bundle exec cap production sidekiq:install
* Deploy: bundle exec cap production deploy


## chrome extension

* https://github.com/cgsave/cgsave-ext
* https://chrome.google.com/webstore/detail/cgsave/pinmchdpdbjbhijbagmealcojjpeebmh

## refresh sitemap

* bundle exec rake sitemap:refresh


## Docker install

1. Make a copy of the example environment file and modify as required [optional].

```
cp .docker.env .env
```

2. Build the images.

```
docker-compose build
```

3. After building the image or after destroying the stack you would have to reset the database using the following command.

```
docker-compose run --rm rails bundle exec rails db:create
docker-compose run --rm rails bundle exec rails db:migrate
docker-compose run --rm rails bundle exec rails db:seed_fu

or 

docker-compose run --rm rails bundle exec rails db:reset
docker-compose run --rm rails bundle exec rails db:seed_fu
```

4. Run app

```
docker-compose up
```

5. stop app

```
docker-compose down
```