 resource "aws_instance" "web-1" {
     ami = "${lookup(var.amis, var.aws_region)}"
     #ami = "ami-0d857ff0f5fc4e03b"
     #ami = "${data.aws_ami.my_ami.id}"
     availability_zone = "us-east-1a"
     instance_type = "t2.nano"
     key_name = "${var.key_name}"
     subnet_id = "${aws_subnet.subnet1-public.id}"
     vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
     associate_public_ip_address = true	
     tags = {
         Name = "Server-1"
         Env = "Prod"
         Owner = "Subhash Rayudu"
 
     }
 } 

  resource "aws_instance" "web-2" {
     ami = "${lookup(var.amis, var.aws_region)}"
     #ami = "ami-0d857ff0f5fc4e03b"
     #ami = "${data.aws_ami.my_ami.id}"
     availability_zone = "us-east-1a"
     instance_type = "t2.nano"
     key_name = "${var.key_name}"
     subnet_id = "${aws_subnet.subnet1-public.id}"
     vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
     associate_public_ip_address = true	
     tags = {
         Name = "Server-2"
         Env = "Prod"
         Owner = "Subhash Rayudu"
 
     }
 } 

 

