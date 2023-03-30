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
resource "kopicloud_distribution_group" "test_distribution_global" {
  name        = "labtest-${random_string.random.result}-distribution-group"
  scope       = "Global"
  description = "This is a very cool Global distribution group"
  email       = "labtest-${random_string.random.result}@kopicloud.com"
  ou_path     = var.ou_path
}

# Returns Created Global Distribution Group
output "OUTPUT_global_distribution_group" {
  description = "Created Global Distribution Group"
  value       = resource.kopicloud_distribution_group.test_distribution_global
}

