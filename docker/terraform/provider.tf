
# Set the required provider and versions
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}

# Configure the docker provider
provider "docker" {
}
