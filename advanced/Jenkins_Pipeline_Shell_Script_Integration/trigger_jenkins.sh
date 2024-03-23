#!/bin/bash

# Define Jenkins URL and job name
JENKINS_URL="http://my_jenkins_url"
JOB_NAME="my_job_name"

# Trigger Jenkins job
curl -X POST $JENKINS_URL/job/$JOB_NAME/build
