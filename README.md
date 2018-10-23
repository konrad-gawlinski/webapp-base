Steps to spinn up Nginx + PhpFpm
- clone the repo
- go to: webapp-base-iac
- vagrant up
- vagrant ssh

- run: cd /iac/packer/webapp
- run: packer build build-script
- run: cd /iac/terraform/development/webapp/
- run: terraform apply

check the url: http://localhost:8185/ 

Add your source code to /webapp
