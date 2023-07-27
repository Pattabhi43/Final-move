resource "aws_instance" "slaves" {
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Slave-1"
  }
}