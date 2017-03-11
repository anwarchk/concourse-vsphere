**To use this pipeline create the params.yml file with the following variables**



Now you can execute the following commands:

-	`fly -t lite login`
-	`fly -t lite set-pipeline -p pcf -c new-setup/pipeline.yml -l params.yml`
-	`fly -t lite unpause-pipeline -p pcf`

![](./images/pipeline_new.png)
