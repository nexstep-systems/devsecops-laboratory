provider "docker" {}

resource "docker_image" "test" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "test" {
  image = docker_image.test.image_id
  name  = "test"
  ports {
    internal = 80
    external = 8000
  }
}