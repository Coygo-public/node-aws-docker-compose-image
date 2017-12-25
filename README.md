# meteor-docker-image
[![CircleCI](https://circleci.com/gh/Lunafi/slim-meteord.svg?style=svg)](https://circleci.com/gh/Lunafi/slim-meteord)

This image was built for running a slim version of Meteor and locking in a specific node version for custom deployment to AWS. 

Node Version is locked at v8.9.3
Server is expecting the bundle was built from Meteor 1.6.1
AWS CLI is locked at 1.14.16 (so you can retrieve secrets)
