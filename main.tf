data "template_file" "user-data" {
  template = file("Userdata.sh")
}

resource "aws_instance" "bishops" {
    ami = var.ami
    instance_type = var.type
    count = 2
    key_name = var.key
    user_data = data.template_file.user-data.rendered
    tags = {
        "Name" = "2-Bishops"
    }
}