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
resource "kopicloud_security_group" "test_security_global" {
  name        = "labtest-${random_string.random.result}-security-group"
  scope       = "Global"
  description = "This is a very cool Global security group"
  email       = "labtest-${random_string.random.result}@kopicloud.com"
  ou_path     = var.ou_path
}

# Returns Created Global Security Group
output "OUTPUT_global_security_group" {
  description = "Created Global Security Group"
  value       = resource.kopicloud_security_group.test_security_global
}

