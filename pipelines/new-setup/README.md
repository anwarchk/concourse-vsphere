
# PCF 1.9 Install Pipeline

This pipeline installs PCF 1.9 (OpsMan, ERT and an optional JMX Bridge tile)

For your convenience, a smaple `params.yml` file has been provided. Change the place holder `<CHANGE_ME` with the values that applies to your environment. By default, `internal` UAA store is used for authentication and authorization. If you would like to use `LDAP`, update the provided `ldap-properties.json` and add it's contents to `tasks/config-ert/task.sh#CF_PROPERTIES` section. For a reference, `ert-1.9-properties.json` has been provided, which contains all the properties that are applicable for ERT 1.9.


By default, the pipeline is configured to go to this repo : `git@github.com:anwarchk/concourse-vsphere`. Please make sure that you update it to match your needs.

OpsMan configuration under `tasks/config-opsdir/task.sh` is hard codes to use the following values for availability zone names:

`"availability_zone_names": [
  "INFRA-AZ", "DEPLOYMENT-AZ", "SERVICES-AZ"
]`

Please make sure that you update this accordingly.

Once all details are filled in, runt the following `fly` commands:

-	`fly -t <target> login`
-	`fly -t <target> set-pipeline -p pcf-install -c new-setup/pipeline.yml -l new-setup/params.yml`
-	`fly -t <target> unpause-pipeline -p pcf-install`
