#!/bin/bash

set +xv

NAMESPACE=$1


# use the default NS in case it was left blank
if [ "${NAMESPACE}" = "" ]; then
   echo 'using default namespace'
   NAMESPACE='default'
fi

# do the actual upgrade via helm
helm upgrade "${NAMESPACE}-sample-app" ./chart \
    --namespace="${NAMESPACE}" $VALUES \
    --install


echo """
    Try this as well:
        helm upgrade ${NAMESPACE}-sample-app-custom ./chart --namespace="${NAMESPACE}" --values values-gen.yaml --install

        If you get Error, Make sure to run the uninstall/delete command, 
        (The Error is due to the way I have architected , it prevents the same chart to overright others)
      """