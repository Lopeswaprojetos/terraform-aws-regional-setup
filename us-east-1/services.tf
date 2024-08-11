provider "aws" {
  region = "us-east-1" # Certifique-se de que esta é a região correta.
}

# Define resources for this region
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # AMI utilizada foi da Amazon Linux 2, que está no nível gratuito; mas pode substitua pelo ID real da AMI.
  instance_type = "t2.micro" # Substitua pelo tipo de instância desejado.
}
