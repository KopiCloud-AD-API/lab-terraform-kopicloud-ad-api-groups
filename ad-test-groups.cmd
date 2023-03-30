@echo off
echo -----------------------------

echo Test Running [AD Groups All List]
cd ad-group-all-list
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-all-list-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-all-list-result.txt
cd ..

echo Test Running [AD Groups Distribution #1] - Create
cd ad-group-distribution-create-1
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-distribution-create-1-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-distribution-create-1-result.txt
echo Test Running [AD Groups Distribution #1] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-group-distribution-create-1-result.txt
cd ..

echo Test Running [AD Groups Distribution #2] - Create
cd ad-group-distribution-create-2
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-distribution-create-2-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-distribution-create-2-result.txt
echo Test Running [AD Groups Distribution #2] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-group-distribution-create-2-result.txt
cd ..

echo Test Running [AD Groups Distribution #3] - Create
cd ad-group-distribution-create-3
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-distribution-create-3-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-distribution-create-3-result.txt
echo Test Running [AD Groups Distribution #3] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-group-distribution-create-3-result.txt
cd ..

echo Test Running [AD Groups Distribution List]
cd ad-group-distribution-list
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-distribution-list-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-distribution-list-result.txt
cd ..

echo Test Running [AD Groups Security #1] - Create
cd ad-group-security-create-1
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-security-create-1-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-security-create-1-result.txt
echo Test Running [AD Groups Security #1] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-group-security-create-1-result.txt
cd ..

echo Test Running [AD Groups Security #2] - Create
cd ad-group-security-create-2
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-security-create-2-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-security-create-2-result.txt
echo Test Running [AD Groups Security #2] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-group-security-create-2-result.txt
cd ..

echo Test Running [AD Groups Security #3] - Create
cd ad-group-security-create-3
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-security-create-3-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-security-create-3-result.txt
echo Test Running [AD Groups Security #3] - Destroy
terraform destroy -auto-approve -no-color >> ..\ad-group-security-create-3-result.txt
cd ..

echo Test Running [AD Groups Security List]
cd ad-group-security-list
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-group-security-list-result.txt
terraform apply -auto-approve -no-color >> ..\ad-group-security-list-result.txt
cd ..



echo -----------------------------
