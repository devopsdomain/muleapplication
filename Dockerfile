FROM eaiesbhub/mule39ce

ARG ARTIFACTS=./artifacts

#ARG MULE_HOME=/opt/mule
ARG MULE_HOME=/root/mule-standalone-3.9.0

ARG service=local_candidate.zip
 
#Deploying the helloworld.zip to mule apps directory
  
ADD ${ARTIFACTS}/${service} ${MULE_HOME}/apps/

# DOWNLOADED MULE 39 CE IMAGE, COMMENTING BELOW INSTRUCION AS MULE IS RUNNING AUTOMATICALLY
#ENTRYPOINT ${MULE_HOME}/bin/mule && /bin/bash

# Default http port

EXPOSE 8089
