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

# * añadimos un segundo proveedor de amazon pero para la region de ohio y le damos un alias para apuntar en el codigo vpc.tf el recurso que queremos que se deploye en ohio
provider "aws" {
  region = "us-east-2"
  alias = "ohio"
}

# $$$ Volver ahora a vpc.tf 
