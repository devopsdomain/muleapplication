FROM kalidass1/mule-runtime-390-app:1.0.0

ARG ARTIFACTS=./artifacts

ARG MULE_HOME=/opt/mule

ARG service=local_candidate.zip
 
#Deploying the helloworld.zip to mule apps directory
  
ADD ${ARTIFACTS}/${service} ./mule/apps/

ENTRYPOINT ${MULE_HOME}/bin/mule && /bin/bash

# Default http port

EXPOSE 8081 8082 8084 9091 8089 8085
