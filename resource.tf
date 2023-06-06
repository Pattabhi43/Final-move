data "aws_ami" "ai-2" {
  owners = ["137112412989"]
  most_recent = true
}

data "aws_vpc" "vpc" {
  most_recent = true
}
resource "aws_security_group" "sg-f" {
  name = "one-for-all"
  vpc_id = data.aws_vpc.vpc.id
  tags = {
    "Name" = "Vito-Corleone"
    "Group" = "GodFather"
  }
}

resource "aws_security_group_rule" "rule-1" {
  security_group_id = aws_security_group.sg-f.id
  type = "All traffic"
  to_port = "All"
  from_port = "All"
  protocol = "All"
  cidr_blocks = "0.0.0.0/0"
}

resource "aws_instance" "lmaster" {
    ami = data.aws_ami.ai-2.id
    instance_type = "t2.micro"
    tags = {
      "Name" = "Don-Corleone"
      "Group" = "GodFather"
    }
    user_data = file("Userdata.sh")
}