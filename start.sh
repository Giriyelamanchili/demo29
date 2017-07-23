#!/bin/bash
# Run the container for testing.
docker run --name custom-jenkins \
  -v "$(pwd)/jhome/jobs":/var/jenkins_home/jobs \
  -v "$(pwd)/jhome/code":/var/jenkins_home/code \
  -p 8080:8080 \
  -p 50000:50000 \
  --env JENKINS_SLAVE_AGENT_PORT=50000 \
  --env JENKINS_OPTS=--httpPort=8080 \
  custom-jenkins
