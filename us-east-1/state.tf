terraform {
  backend "s3" {
    bucket         = "terraform-state-us-east-1" # Substitua pelo nome do seu bucket S3.
    key            = "us-east-1/services/terraform.tfstate" # Mantenha ou modifique conforme necessário.
    region         = "us-east-1" # Certifique-se de que esta é a região correta.
    encrypt        = true
    dynamodb_table = "terraform-locks" # Substitua pelo nome da tabela DynamoDB, se estiver usando.
  }
}
