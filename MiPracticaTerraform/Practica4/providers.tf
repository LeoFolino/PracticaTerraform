terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
  required_version = "~>1.9.0"
}

provider "aws" {
  region = "us-east-1"
}

# como estamos apuntando a la version de aws bastante anterior, ahora no va a bajar la ultima, sino la que le estamos pidiendo
# /capturas/terraform-init-provider-v

