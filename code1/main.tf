resource "aws_instance" "demo" {
  ami           = "ami-04823729c75214919"
  count         = 1
  instance_type = var.instance_type
  tags = {
    Name      = "test-dev"
    Owner     = "dev"
    env       = "dev"
    terraform = "True"

  }
}



