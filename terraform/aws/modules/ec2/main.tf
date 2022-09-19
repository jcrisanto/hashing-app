resource "aws_instance" "hashing_app_server" {
  ami           = "ami-068663a3c619dd892"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name,
    MadeWith = "Terraform"
  }
}
