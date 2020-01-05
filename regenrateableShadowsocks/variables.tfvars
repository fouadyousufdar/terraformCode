variable "availability_zones" {
  default = "cn-hongkong"
}

variable "region_id_list" {
  type = list(string)
  value = ["cn-qingdao","cn-beijing","cn-zhangjiakou","cn-huhehaote","cn-hangzhou","cn-shanghai","cn-shenzhen","cn-hongkong","ap-northeast-1","ap-southeast-1","ap-southeast-2","ap-southeast-3","ap-southeast-5","ap-south-1","us-east-1","us-west-1","eu-west-1","me-east-1","eu-central-1"]
