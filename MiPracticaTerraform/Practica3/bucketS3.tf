resource "aws_s3_bucket" "proveedores" {
    count = 6
  bucket = "comeme-los-huevos-palme-${random_string.sufijo[count.index].id}"
  tags = {
    Owner        = "Leito"
    Environment = "Dev"
    Office = "Proveedores"
  }
}

resource "random_string" "sufijo" {
  count            = 6
  length           = 10
  special          = false
  upper            = false
}

# GUARDAR Y USAR UN PLAN:
# terraform plan --out s3.plan // Genera el archivo s3.plan con las instrucciones guardadas para ejecutar terraform apply s3.plan /// CUANDO SE EJECUTA ESTO GENERA AUTOMATICAMENTE LOS RECURSOS
# NO PREGUNTA SI SE DEBE DEPLOYAR O NO