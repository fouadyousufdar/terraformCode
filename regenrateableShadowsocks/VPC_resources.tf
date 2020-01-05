resource "alicloud_vpc" "cloudxninja" {
  name       = "cloudxninjavpc"
  cidr_block = "10.0.0.0/8"
  description = "This is ClouDxNinja resource pool in HK"
}

# Hongkong region zone A is currently unavailable.
#resource "alicloud_vswitch" "vsw_a_001" {
#  name = "vsw_a_001"
#  description = "This is ClouDxNinja VSW in Zone A of HK"
#  vpc_id            = "${alicloud_vpc.cloudxninja.id}"
#  cidr_block        = "10.0.1.0/24"
#  availability_zone = "cn-hongkong-a"
#}

resource "alicloud_vswitch" "vsw_b_001" {
  name = "vsw_b_001"
  description = "This is ClouDxNinja VSW in Zone B of HK"
  vpc_id            = "${alicloud_vpc.cloudxninja.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "cn-hongkong-b"
}

resource "alicloud_vswitch" "vsw_c_001" {
  name = "vsw_c_001"
  description = "This is ClouDxNinja VSW in Zone C of HK"
  vpc_id            = "${alicloud_vpc.cloudxninja.id}"
  cidr_block        = "10.0.3.0/24"
  availability_zone = "cn-hongkong-c"
}
