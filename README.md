# Angular2ECS

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 11.0.5. &nbsp;

This project uses Docker, AWS CodeCommit, CodeBuild, CodePipeline, ECR, and ECS.

## Prerequisites
* Angular CLI
* Nodejs
* Docker
* AWS Account and CLI

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for 
a production build.

## Command Guides
* Docker Build : `docker build -t image_tag_name .`
* Docker Run   : `docker run -dp port:port image_tag_name`
* Docker Tag   : `docker tag angular2ecs:latest 959773376544.dkr.ecr.eu-west-2.amazonaws.com/angular2ecs:latest`
* Docker Push  : `docker push 959773376544.dkr.ecr.eu-west-2.amazonaws.com/angular2ecs:latest`
* Docker PS    : `docker ps`
* Docker Images: `docker images`

## Changelogs
* 14.01.21 - Initial commit
* 14.01.21 - README changes
* 15.01.21 - Following [Deploying Angular app on ECS](https://medium.com/bb-tutorials-and-thoughts/aws-deploying-angular-with-nodejs-app-on-ecs-2128208017f8)
* 18.01.21 - Dockerized the application
* 19.1.21 - Fixed dockerization issues
* 23.01.21 - Added buildspc.yml needed for CodeBuild.
* 24.01.21 - Following [AWS Build CD Pipeline for Images with ECR as Source Guide](https://aws.amazon.com/blogs/devops/build-a-continuous-delivery-pipeline-for-your-container-images-with-amazon-ecr-as-source/)