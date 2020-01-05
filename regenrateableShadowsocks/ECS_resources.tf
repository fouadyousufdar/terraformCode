# Create a new ECS instance for a VPC

resource "alicloud_instance" "sss_instance" {
  availability_zone    = "cn-hongkong-c"
  security_groups      = ["${alicloud_security_group.sec_group.id}"]
  instance_type        = "${data.alicloud_instance_types.cores1mem1g.instance_types.0.id}"
  system_disk_category = "cloud_efficiency"
  system_disk_size     = 40
  image_id             = "m-j6cdlv1vxrlpjy1189xt"
  instance_name        = "ninjaECS"
  description          = "This is created with TF"
  host_name             = "newtfecs"
  vswitch_id           = "${alicloud_vswitch.vsw_c_001.id}"
  key_name             = "${alicloud_key_pair.mykey.id}"
  internet_max_bandwidth_out = 100

}

# Get a list of Cheap ECS instances with 1 CPU cores and 1GB RAM
data "alicloud_instance_types" "cores1mem1g" {
    cpu_core_count = 1
    memory_size = 1
    instance_type_family = "ecs.t5"
}

resource "alicloud_key_pair" "mykey" {
    key_name = "fouad-omni-key"
}
