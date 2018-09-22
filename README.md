# Slim Meteord
[![CircleCI](https://circleci.com/gh/Coygo-public/node-aws-docker-compose-image.svg?style=svg)](https://circleci.com/gh/Coygo-public/node-aws-docker-compose-image)

This image was built (~300MB) for running a slim version of Meteor and locking in a specific node version for custom deployment to AWS. 

* Node Version is locked at v8.11.4
* Server is expecting the bundle was built from Meteor 1.7.0.5
* AWS CLI is locked at 1.16.19 (so you can retrieve secrets from S3 or push to ECS)

Note: It also includes Docker-compose >= 1.18.0 and Docker >= 17.05.0-r0 (so it could easily be used as a base image in CI jobs)
