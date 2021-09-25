provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-ec2" {
  type = "t2.micro"
  ami = "ami-0a57edb3631e68796"
  tags = {
    Name = "demo-club-house"
  }
}