# PCF 1.9 Install on VSphere using Concourse CI

A PCF 1.9 install Concourse pipeline based on the work by @rahulkj : https://github.com/rahul-kj/concourse-vsphere

Refer to the /pipelines README for detailed pipeline specific instructions.

Once all the required details have been filled out for a specific pipeline, below are the sample `fly` commands to create and run a Concourse pipeline.

* `fly -t lite login`
* `fly -t lite set-pipeline -p pcf-install -c pipeline.yml -l params.yml`

* `fly -t lite unpause-pipeline -p pcf-install`

The picture below shows a pipeline with steps, that may or may not apply to your specific use case. So, please disable or enable jobs accordingly.

![](./pipelines/images/pipeline_new.png)
