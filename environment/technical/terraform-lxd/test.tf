# Creating a container "test"
resource "lxd_instance" "test" {
  name     = "test"
  image    = "ubuntu2204"
  profiles = ["default"]

  limits = {
    cpu    = "0,2"
    memory = "256MB"
  }
}