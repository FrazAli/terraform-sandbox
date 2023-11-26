terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.github_token
}

# Create a new repository
resource "github_repository" "kk-portfolio" {
  name = "kk-portfolio"
  description = "Kamil Qureshi's portfolio"

  visibility = "private"
  auto_init = true
}
