module "ec2" {
    source = "../modules/ec2/"
    ami_id = "ami-02d26659fd82cf299"
    instance_type = "t2.micro"
    key_name = "AWS-key"
    instance_count = 2
}
