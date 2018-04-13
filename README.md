# Slim Meteord
[![CircleCI](https://circleci.com/gh/Lunafi/slim-meteord.svg?style=svg)](https://circleci.com/gh/Lunafi/slim-meteord)

This image was built (~300MB) for running a slim version of Meteor and locking in a specific node version for custom deployment to AWS. 

* Node Version is locked at v8.9.4
* Server is expecting the bundle was built from Meteor 1.6.1.1
* AWS CLI is locked at 1.14.16 (so you can retrieve secrets from S3 or push to ECS)

Note: It also includes Docker-compose >= 1.18.0 and Docker >= 17.05.0-r0 (so it could easily be used as a base image in CI jobs)
