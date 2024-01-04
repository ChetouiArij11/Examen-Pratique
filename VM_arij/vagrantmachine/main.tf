terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {host = "tcp://192.168.121.138:2375"}

resource "docker_image" "testautomatisation" {
  name         = "arijchetoui1/testautomatisation"
  keep_locally = false
}

resource "docker_container" "testautomatisation" {
  image = docker_image.testautomatisation.name
  name  = "testautomatisation"
  ports {
    internal = 8888
    external = 9999
  }
  restart = "unless-stopped"  # Politique de redémarrage
}
