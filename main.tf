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

 terraform {
      backend "remote" {
        # The name of your Terraform Cloud organization.
        organization = "example-organization"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
          name = "example-workspace"
        }
      }
    }

    # An example resource that does nothing.
    resource "null_resource" "example" {
      triggers = {
        value = "A example resource that does nothing!"
      }
    }
