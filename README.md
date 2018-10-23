clone the repo
go to: webapp-base-iac
vagrant up
vagrant ssh
run: cd /iac/packer/webapp
run: packer build build-script

run: cd /iac/terraform/development/webapp/
run: terraform apply

check the url: http://localhost:8185/ 
