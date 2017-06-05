variable "count" {
  default = 0
}
resource "openstack_compute_instance_v2" "web" {
  count = "${var.count}"
  name = "${format("petclinic-int-web-%02d", count.index+1)}"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  availability_zone = "nova"
  key_pair = "${var.openstack_keypair}"
  security_groups = ["default"]
  network {
    name = "${var.tenant_network}"
  }
  user_data = "${file("bootstrap-ubuntu.sh")}"
}
output "ip" {
  value = "${openstack_compute_instance_v2.web.access_ip_v4}"
}

