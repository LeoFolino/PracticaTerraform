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