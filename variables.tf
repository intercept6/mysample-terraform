variable "subnet" { 
    type = "map"

  default = {
    public1.cidr_block = "10.0.1.0/24"
    public1.availability_zone = "ap-northeast-1a"
    public1.map_public_ip_on_launch = true
  }
}