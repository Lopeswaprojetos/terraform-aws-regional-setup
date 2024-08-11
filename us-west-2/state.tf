terraform {
  backend "s3" {
    bucket         = "terraform-state-us-west-2" # Substitua pelo nome do seu bucket S3.
    key            = "us-west-2/services/terraform.tfstate"  # Mantenha ou modifique conforme necessário.
    region         = "us-west-2" # Certifique-se de que esta é a região correta.
    encrypt        = true
    dynamodb_table = "terraform-locks" # Substitua pelo nome da tabela DynamoDB, se estiver usando.
  }
}

