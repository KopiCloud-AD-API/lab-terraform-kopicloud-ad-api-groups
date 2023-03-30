@echo off
cls
echo Clean up Logs
del /q ad*.txt

echo -----------------------------

echo AD Group All List
del /q "ad-group-all-list\.terraform.lock.hcl"
del /q "ad-group-all-list\terraform.tfstate.*"
rmdir /s /q "ad-group-all-list\.terraform"

echo AD Group Distribution Create #1
del /q "ad-group-distribution-create-1\.terraform.lock.hcl"
del /q "ad-group-distribution-create-1\terraform.tfstate.*"
rmdir /s /q "ad-group-distribution-create-1\.terraform"

echo AD Group Distribution Create #2
del /q "ad-group-distribution-create-2\.terraform.lock.hcl"
del /q "ad-group-distribution-create-2\terraform.tfstate.*"
rmdir /s /q "ad-group-distribution-create-2\.terraform"

echo AD Group Distribution Create #3
del /q "ad-group-distribution-create-3\.terraform.lock.hcl"
del /q "ad-group-distribution-create-3\terraform.tfstate.*"
rmdir /s /q "ad-group-distribution-create-3\.terraform"

echo AD Group Distribution List
del /q "ad-group-distribution-list\.terraform.lock.hcl"
del /q "ad-group-distribution-list\terraform.tfstate.*"
rmdir /s /q "ad-group-distribution-list\.terraform"

echo AD Group Security Create #1
del /q "ad-group-security-create-1\.terraform.lock.hcl"
del /q "ad-group-security-create-1\terraform.tfstate.*"
rmdir /s /q "ad-group-security-create-1\.terraform"

echo AD Group Security Create #2
del /q "ad-group-security-create-2\.terraform.lock.hcl"
del /q "ad-group-security-create-2\terraform.tfstate.*"
rmdir /s /q "ad-group-security-create-2\.terraform"

echo AD Group Security Create #3
del /q "ad-group-security-create-3\.terraform.lock.hcl"
del /q "ad-group-security-create-3\terraform.tfstate.*"
rmdir /s /q "ad-group-security-create-3\.terraform"

echo AD Group Security List
del /q "ad-group-security-list\.terraform.lock.hcl"
del /q "ad-group-security-list\terraform.tfstate.*"
rmdir /s /q "ad-group-security-list\.terraform"

echo -----------------------------

pause

ad-group-security-create-1