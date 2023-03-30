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
resource "kopicloud_security_group" "test_security_universal" {
  name        = "labtest-${random_string.random.result}-security-group"
  scope       = "Universal"
  description = "This is a very cool Universal security group"
  email       = "labtest-${random_string.random.result}@kopicloud.com"
  ou_path     = var.ou_path
}

# Returns Created Universal Security Group
output "OUTPUT_universal_security_group" {
  description = "Created Universal Security Group"
  value       = resource.kopicloud_security_group.test_security_universal
}

