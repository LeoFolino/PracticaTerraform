# PARA ESTA PRACTICA SE UTILIZARA EL PROVIDER "RANDOM" -- ES OTRO PROVIDER LOCAL -- EVOLUCIONA EN local_file.tf y random_string.tf . Este codigo fue el inicial y forma parte del aprendizaje

# resource "local_file" "productos" {
#     content = "Lista de productos para el mes proximo"
#     filename = "productos.txt"
# }

# Hasta la linea 7, si hacemos un terraform plan va a correr porque anteriormente con terraform init
# realizó la carga de los plugins necesarios para el provider 'local', pero si intentamos ejecutar terraform plan
# con el siguiente recurso, nos va a fallar, ya que no hicimos un terraform init cargando los plugins o
# características necesarias para el provider 'random'

# resource "random_string" "sufijo" {
#   length           = 10
#   special          = true
#   override_special = "/@£$#%&"
#   upper = true
# }

# Por lo que luego de añadir un nuevo provider, se debe utilizar nuevamente terraform init

# ADJUNTAR terraform-init

# > Se observa que va a utilizar la version hashicorp/local anterior descargada, por lo que no la va a volver a descargar, y va a avanzar con la descarga e instalacion de hashicorp/random

# Sin embargo, si yo quisiera añadir un sufijo a productos.txt lo que tengo que hacer, es anidar una variable llamando a este recurso de la siguiente manera

# resource "local_file" "productos" {
#     content = "Lista de productos para el mes proximo"
#     filename = "productos-${random_string.sufijo.id}.txt"
# }

# > Con esto estoy diciendo que el nombre va a ser productos-(resultado del recurso random_string).

# Luego de ejecutar terraform plan y terraform apply, nos encontramos con un archivo llamado productos-LmRsXFPcCU.txt generado por el recurso random_string aplicado al recurso local_file

### APLICACION DEL terraform show
# ADJUNTAR terraform-show
# > El terraform show nos va a mostrar los recursos que terraform implemento, al hacer un terraform destroy, terraform show no va a mostrar nada.

# Terraform deploya a nivel directorio, que significa? Que todos los .tf que se encuentren en el directorio donde estoy disparando terraform init, terraform plan, terraform apply o terraform destroy,
# van a formar parte de la ejecucion, por lo que puedo separar este archivo en dos partes, de tal manera que quede local_file.tf y random_string.tf 

# Es importante balancear, no es bueno tener todo en un solo archivo .tf ni tampoco 100 archivos .tf para cada cosa // Luego de este punto dividimos el código de la manera mencionada
# >Se crean los archivos local_file.tf que va a contener dicho resource, y lo mismo con random_string.tf

# El nombre del recurso debe ser unico y no repetible para que genere la cantidad de recursos que estamos definiendo. Por ese se procede a agregar producto-1 producto-2 producto-3 etc en cada nombre del recurso local_file
# Se cambia el nombre del recurso random_string al igual que en local_file.tf. Ya que no puedo tener el mismo nombre de recurso para reiterados recursos.

# Al ejecutar terraform apply y aceptar el cambio, se crean los 10 archivos correspondientes. Destruye los 2 anteriores, y crea los 5 local_file y los otros 5 random_string