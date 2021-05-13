#!/bin/bash
ARTIFACT=`packer build -machine-readable packer-example.json |awk -F, '$0 ~/artifact,0,id/ {print $6}'`
ami_id=`echo $ARTIFACT | cut -d ':' -f2`
echo 'variable "ami_id" { default = "'${ami_id}'" }' > amivar.tf
terraform init
terraform apply
