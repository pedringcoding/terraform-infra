
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

# Create a docker image resource
# -> docker pull nginx:latest
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

# Create a docker container resource
# -> docker run --name nginx -p8080:80 -d nginx:latest
resource "docker_container" "nginx" {
  name    = "nginx"
  image   = docker_image.nginx.latest

  ports {
    external = 8080
    internal = 80
  }
}

