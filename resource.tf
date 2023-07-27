data "aws_ami" "ai-2" {
  owners = ["137112412989"]
  most_recent = true
}

resource "aws_security_group" "sg-f" {
  name = "one-for-all"
  vpc_id = "vpc-058f201c93f85dda5"
  ingress {
      description = "Inbound Traffic"
      type = "All traffic"
      from_port = "All"
      to_port = "All"
      protocol = "All"
      cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
      description = "Outbound traffic"
      type = "All traffic"
      from_port = "All"
      to_port = "All"
      protocol = "All"
      cidr_blocks = [ "0.0.0.0/0" ]
  }
  
  tags = {
    "Name" = "Vito-Corleone"
    "Group" = "GodFather"
  }
}

resource "aws_instance" "lmaster" {
    ami = data.aws_ami.ai-2.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.sg-f.id]
    tags = {
      "Name" = "Don-Corleone"
      "Group" = "GodFather"
    }
    user_data = file("Userdata.sh")
}