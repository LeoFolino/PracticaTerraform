resource "random_string" "sufijo" {
  length           = 10
  special          = true
  override_special = "/@£$#%&"
  upper = true
}