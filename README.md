riakon-queue
============

This is a rackup file used to deploy the sidekiq web console to AppFog.

The AppFog application should be setup as follows:

``` af push riakon-queue --runtime ruby193 ```

Select **Rack** application. 

Ensure that the following environment variables are set:

- ```REDISTOGO_URL```: RedisToGo URL w/ credentials
- ```ADMIN_USER```: Admin username
- ```ADMIN_PASS```: Admin password


