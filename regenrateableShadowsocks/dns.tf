# Create a new Domain record
resource "alicloud_dns_record" "hkprecord" {
  name        = "icubes.win"
  host_record = "sss"
  type        = "A"
  value       = "${alicloud_instance.sss_instance.public_ip}"
}
