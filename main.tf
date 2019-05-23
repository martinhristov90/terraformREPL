provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-0444fa3496fb4fab2"
    instance_type = "t2.micro"

    subnet_id = "subnet-2f591701"
    vpc_security_group_ids = [
        "sg-3ddbcb64"
    ]

    tags {
        "name" = "MYMACHINE"
        "ping" = "pong"
    }
  
}

