provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "my_server" {
  ami           = "ami-084568db4383264d4"  # Ubuntu Server 24.04 LTS (HVM)
  instance_type = "t2.micro"               # Free tier eligible
  tags = {
    Name = "My-First-Terraform-Server"
  }
}