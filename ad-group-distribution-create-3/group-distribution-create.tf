##################################################
## KopiCloud AD API - Create Distribution Group ##
##################################################

# Group Name
resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

# Create a Global Distribution Group
resource "kopicloud_distribution_group" "test_distribution_domain_local" {
  name        = "labtest-${random_string.random.result}-distribution-group"
  scope       = "Domain_Local"
  description = "This is a very cool Domain Local distribution group"
  email       = "labtest-${random_string.random.result}@kopicloud.com"
  ou_path     = var.ou_path
}

# Returns Created Domain Local Distribution Group
output "OUTPUT_domain_local_distribution_group" {
  description = "Created Domain Local Distribution Group"
  value       = resource.kopicloud_distribution_group.test_distribution_domain_local
}
