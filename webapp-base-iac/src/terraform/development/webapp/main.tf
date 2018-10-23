provider "docker" {
  host = "tcp://127.0.0.1:2375"
}

resource "docker_container" "webapp_container" {
  image = "private/webapp:latest"
  name  = "webapp_container"
  hostname = "webapp.dev"
  ports {
    internal = "80"
    external = "80"
  }

  networks = ["webapp-network"]
  command = ["supervisord", "-n"]

  volumes {
    host_path = "/var/webapp"
    container_path = "/var/webapp"
  }
}
