terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version ="~> 5.0"
        }
    }
}
provider "aws" {
    region ="us-east-2"
    access_key ="AKIAZXAGDAPR3IYWNNU4"
    secret_key ="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"
}
resource "aws_instance" "ncos" {
    ami =""
    instance_type ="t2.micro"
}
output "ncos Public_ip" {
    value=aws_instance.ncos.public-ip
}