resource "random_string" "sufijo-1" {
  length           = 10
  special          = true
  override_special = "/@£$#%&"
  upper = true
}

resource "random_string" "sufijo-2" {
  length           = 10
  special          = true
  override_special = "/@£$#%&"
  upper = true
}

resource "random_string" "sufijo-3" {
  length           = 10
  special          = true
  override_special = "/@£$#%&"
  upper = true
}

resource "random_string" "sufijo-4" {
  length           = 10
  special          = true
  override_special = "/@£$#%&"
  upper = true
}

resource "random_string" "sufijo-5" {
  length           = 10
  special          = true
  override_special = "/@£$#%&"
  upper = true
}

# Se cambia el nombre del recurso al igual que en local_file.tf. Ya que no puedo tener el mismo nombre de recurso para reiterados recursos.
