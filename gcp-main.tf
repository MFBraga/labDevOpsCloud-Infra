# Cria uma VM no Google Cloud
resource "google_compute_instance" "firstvm" {
  name         = "helloworld"
  machine_type = "${var.gcp_machine}"
  zone         = "${var.gcp_zone}"

  # Defini a Imagem da VM
  boot_disk {
    initialize_params {
      image = "${var.gcp_image}"
    }
  }

  # Habilita rede para a VM com um IP público
  network_interface {
    network = "default" # Estamos usando a VPC default que já vem por padrão no projeto.

    access_config {
    // A presença do bloco access_config, mesmo sem argumentos, garante que a instância estará acessível pela internet.
    }
  }
}