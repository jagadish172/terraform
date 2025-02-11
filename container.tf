resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  name  = "nginx-container"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8080
  }
}
