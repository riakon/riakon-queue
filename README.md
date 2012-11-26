riakon-queue
============

This is a rackup file used to deploy the sidekiq web console to AppFog.

The AppFog application should be setup as follows:

``` af push riakon-queue --runtime ruby193 ```

Select **Rack** application. 

Ensure that an environment variable ```REDISTOGO_URL``` is set, with the appropriate URL.
