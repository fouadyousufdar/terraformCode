resource "alicloud_security_group" "sec_group" {
  name        = "ninjaSGgroup"
  description = "THis is project ninja SGgroup"
  vpc_id = "${alicloud_vpc.cloudxninja.id}"
}

resource "alicloud_security_group_rule" "allow_all_8388" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "8388/8388"
  priority          = 1
  security_group_id = "${alicloud_security_group.sec_group.id}"
  cidr_ip           = "0.0.0.0/0"
}
