terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_config_files      = ["/root/.aws/config"]
  shared_credentials_files = ["/root/.aws/credentials"]
}

resource "aws_instance" "my_instacne" {
    ami = "ami-0fe630eb857a6ec83"
    instance_type = "t2.micro"
    key_name = "global_key"
}
