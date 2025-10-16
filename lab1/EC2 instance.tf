provider "aws" {
    region = "ap-south-1"
    #access_key = ""
    #secret_key = ""
}
resource "aws_instance" "web_server"{
    ami = "ami-02d26659fd82cf299"
    instance_type = "t2.micro"
    key_name = "AWS-key"
    tags = {
        name = "web-server"
        project = "project"
    }
    subnet_id = "subnet-03f2c6150261ef69d"
    vpc_security_group_ids = ["sg-028dbbd1c5a3db857"]
}
output "instance_id" {
    value = aws_instance.web_server.id
}
output "elastic_ip" {
    value = aws_instance.web_server.public_ip
}
