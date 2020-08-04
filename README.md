[![circleci](https://circleci.com/gh/Uzodimma01/Microservices_project.svg?style=svg)](https://circleci.com/gh/Uzodimma01/Microservices_project)

## Project Overview

This project operationalizes a Machine Learning Microservice API

A pre-trained is given, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 
You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). `app.py` — serves out predictions (inference) about housing prices through API calls. 


### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. This project:
* Tests the project code using linting
* Contains a Dockerfile to containerize this application
* Deploys the containerized application using Docker and make a prediction
* Improves the log statements in the source code for this application
* Configures Kubernetes and creates a Kubernetes cluster
* Deploys a container using Kubernetes and make a prediction
* Uploads a complete Github repo with CircleCI to indicate that your code has been tested

## Files contained
* app.py - a pre-trained model which serves the predictions
* makefile - a file which describes the environment setup for the project and lints the python and docker files
* requirements.txt - a file which specifies the required packages to be installed for the project
* Dockerfile - a docker configuration file used to build the docker image
* run_docker.sh - a script file which executes the necessary commands to deploy the docker image
* upload_docker.sh - a script file which executes the necessary commands to upload the docker image to dockerhub
* run_kubernetes.sh - a script file which executes the necessary commands to deploy the kubernetes cluster
* config.yml - a circleci configuration file contained in the .circleci which describes the necessary steps to run the project in circleci

## how to Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
