#!/bin/bash
chmod +x om-cli/om-linux

until $(curl --output /dev/null -k --silent --head --fail https://$OPS_MGR_HOST/setup); do
    printf '.'
    sleep 5
done

./om-cli/om-linux -t https://$OPS_MGR_HOST -k configure-authentication -u $OPS_MGR_USR -p $OPS_MGR_PWD -dp $OM_DECRYPTION_PWD
