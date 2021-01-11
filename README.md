# batch-state-pull

`batch-changing.sh' - A simple shell script to batch move around a lot of terragrunt states. Useful when doing a major folder reorganization.
`batch-plan.sh` - conducts terraform plan-all in the context where answering to a prompt is needed. In the case the script was created, automatic prompt was needed in planning so that the state in the folder would be pushed to S3 bucket remotelly.