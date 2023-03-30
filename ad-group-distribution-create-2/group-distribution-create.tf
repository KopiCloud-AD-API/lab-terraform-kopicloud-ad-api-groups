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
resource "kopicloud_distribution_group" "test_distribution_universal" {
  name        = "labtest-${random_string.random.result}-distribution-group"
  scope       = "Universal"
  description = "This is a very cool Universal distribution group"
  email       = "labtest-${random_string.random.result}@kopicloud.com"
  ou_path     = var.ou_path
}

# Returns Created Universal Distribution Group
output "OUTPUT_universal_distribution_group" {
  description = "Created Universal Distribution Group"
  value       = resource.kopicloud_distribution_group.test_distribution_universal
}

