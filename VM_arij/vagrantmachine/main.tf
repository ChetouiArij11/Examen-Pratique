provider "docker" {
  host = "tcp://192.168.121.213:2375"
}

resource "docker_container" "salutation" {
  name  = "salutation"
  image = "arijchetoui1/testautomatisation:latest"

  ports {
    internal = 8888
    external = 9999
  }
}