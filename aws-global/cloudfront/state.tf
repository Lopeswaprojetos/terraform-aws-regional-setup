terraform {
  backend "s3" {
    bucket         = "terraform-state-global" # Substitua pelo nome do seu bucket S3.
    key            = "global/cloudfront/terraform.tfstate" # Mantenha o caminho ou modifique se necessário.
    region         = "us-east-1" # Substitua pela região do bucket S3.
    encrypt        = true
    dynamodb_table = "terraform-locks" # Substitua pelo nome da tabela DynamoDB para locking.
  }
}
