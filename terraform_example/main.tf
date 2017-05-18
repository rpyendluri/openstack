variable "count" {
  default = 1
}
resource "openstack_compute_instance_v2" "web" {
  count = "${var.count}"
  name = "${format("web-%02d", count.index+1)}"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  availability_zone = "nova"
  key_pair = "${var.openstack_keypair}"
  security_groups = ["default"]
  network {
    name = "${var.tenant_network}"
  }
  user_data = "${file("bootstrap.sh")}"
}

