resource "local_file" "productos" {
    count = 5
    content = "Lista de productos para el mes proximo"
    filename = "productos-${random_string.sufijo[count.index].id}.txt"
}

# resource "local_file" "productos-2" {
#     content = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo-2.id}.txt"
# }

# resource "local_file" "productos-3" {
#     content = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo-3.id}.txt"
# }

# resource "local_file" "productos-4" {
#     content = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo-4.id}.txt"
# }

# resource "local_file" "productos-5" {
#     content = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo-5.id}.txt"
# }

# El nombre del recurso debe ser unico y no repetible para que genere la cantidad de recursos que estamos definiendo. Por ese se procede a agregar -1 -2 -3 etc en cada nombre del recurso

# Ahora nos apegamos al concepto de DRY

# count --> lo usamos para generar repeticiones del recurso, se hace tanto en local_file como en random_string
# count.index es una palabra reservada para esta funcion