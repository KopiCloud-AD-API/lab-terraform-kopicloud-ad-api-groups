##############################################
## KopiCloud AD API - Create Security Group ##
##############################################

# Group Name
resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

# Create a Global Security Group
resource "kopicloud_security_group" "test_security_domain_local" {
  name        = "labtest-${random_string.random.result}-security-group"
  scope       = "Domain_Local"
  description = "This is a very cool Domain Local security group"
  email       = "labtest-${random_string.random.result}@kopicloud.com"
  ou_path     = var.ou_path
}

# Returns Created Domain Local Security Group
output "OUTPUT_domain_local_security_group" {
  description = "Created Domain Local Security Group"
  value       = resource.kopicloud_security_group.test_security_domain_local
}
