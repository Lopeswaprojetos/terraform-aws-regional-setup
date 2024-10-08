## Terraform AWS Setup - Free Tier Resources

Este projeto utiliza o Terraform para provisionar recursos na AWS usando serviços (Free Tier). A configuração foi feita de forma a evitar custos, utilizando principalmente o CloudFront, S3, e instâncias EC2 t2.micro.

## Arquitetura do Projeto

**O projeto está organizado em três principais diretórios:**
**`aws-global/cloudfront:`** Configuração de um bucket S3 para ser a origem de uma distribuição CloudFront.

**`us-east-1:`** Configuração de uma instância EC2 na região us-east-1.

**`us-west-2:`** Estrutura semelhante ao us-east-1 para suporte em outra região, mas para esse exemplo, só configuramos o us-east-1.

## Recursos Utilizados
**`CloudFront:`** Configurado para distribuir conteúdo armazenado em um bucket S3.

**`S3:`** Usado tanto para armazenar o estado do Terraform quanto como origem para o CloudFront.

**`EC2:`** Criação de uma instância t2.micro (dentro do Free Tier) na região us-east-1.

**`DynamoDB (Opcional):`** Usado para gerenciamento de locking do estado do Terraform.

## Configuração e Execução
         **Pré-requisitos**
**`Terraform:`** Instale a versão mais recente do Terraform em sua máquina.

**`AWS CLI:`** Configure as credenciais AWS usando aws configure.

**`Conta AWS:`** Certifique-se de que sua conta AWS está dentro dos limites do Free Tier.

## Passos para Configuração
Clone este repositório:
https://github.com/Lopeswaprojetos/terraform-aws-regional-setup.git

## Modifique os arquivos conforme necessário:
**`S3 Bucket Names:`** Nos arquivos terraform_state.tf e services.tf, substitua os nomes dos buckets S3 (terraform-state-global, terraform-state-us-east-1, etc.) por nomes únicos de buckets na AWS.

**`DynamoDB Table (Opcional):`** Se estiver usando DynamoDB para locking, substitua o nome da tabela.

**Inicialize o Terraform:**

 terraform init

**Revise o plano de execução:** Este comando mostrará o que será criado na AWS, permitindo que você revise e confirme antes de aplicar as mudanças.

 terraform plan

 **Aplique as mudanças:** Confirme a execução e aguarde a criação dos recursos. O Terraform criará os recursos AWS nas regiões especificadas (us-east-1 e us-west-2), respeitando os limites do Free Tier.

 terraform apply

**Limpeza dos Recursos:** Para evitar quaisquer custos não previstos, certifique-se de destruir os recursos criados após o uso;comando removerá todos os recursos criados pelo Terraform.

terraform destroy



## Considerações Finais

**`Atenção aos Limites do Free Tier:`** Certifique-se de monitorar o uso dos recursos, pois ultrapassar os limites do Free Tier pode resultar em cobranças.

**`Substituições Necessárias:`** Sempre verifique e substitua os nomes dos buckets S3 e tabelas DynamoDB por valores únicos e específicos do seu ambiente.

**`Documentação Terraform:`** Para mais informações sobre os recursos utilizados, consulte a documentação oficial do Terraform.

