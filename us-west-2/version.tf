terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0" # Verifique se a versão do provedor AWS está atualizada e compatível.
    }
  }
}


