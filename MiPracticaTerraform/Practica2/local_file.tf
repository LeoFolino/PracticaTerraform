resource "local_file" "productos" {
    content = "Lista de productos para el mes proximo"
    filename = "productos-${random_string.sufijo.id}.txt"
}