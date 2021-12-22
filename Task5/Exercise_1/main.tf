# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAY5ELRFZQQZAF5O4U"
  secret_key = "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"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "t2_servers" {
  count = 4

  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"

  subnet_id = "subnet-0fe0685d2a6e9d8e4"

  tags = {
    Name = "Udacity T2-${count.index}"
  }
}



# TODO: provision 2 m4.large EC2 instances named Udacity M4
