resource "aws_subnet" "public1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet["public1.cidr_block"]}"
  availability_zone = "${var.subnet["public1.availability_zone"]}"
  map_public_ip_on_launch = "${var.subnet["public1.map_public_ip_on_launch"]}"

  tags {
    Name = "public1-subnet"
    Environment = "prod"
  }
}