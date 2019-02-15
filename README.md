# ci-base-docker
Docker Base imagen for CI

It is based on tmaier/docker-compose and adds mainly awscli for pushing images to ECR
You should run this image with the environemnt variables for you AWS account.
 - AWS_ACCESS_KEY_ID
 - AWS_SECRET_ACCESS_KEY
 
The file [gitlab-ci.yml](gitlab-ci.example.yml) contains an example of how to use this base image

