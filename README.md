riakon-queue
============

This is a rackup file used to deploy the sidekiq web console to AppFog.

## Deployment

The first step is to prepare the dependencies using bundler:

``` bundle install && bundle package```

A new AppFog application should be setup as follows:

``` af push riakon-queue --runtime ruby193 ```

or, if the application is already correctly setup, update using:

``` af update riakon-queue ```

## Configuration

Ensure that the following environment variables are set:

- ```REDISTOGO_URL```: RedisToGo URL w/ credentials
- ```ADMIN_USER```: Admin username
- ```ADMIN_PASS```: Admin password