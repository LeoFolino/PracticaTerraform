# No hay nombres reservados para nombrar archivos en Terraform

resource "local_file" "productos" {

    content = "Lista de productos"
    filename = "productos.txt"
}

# Para ejecutar el codigo (En Windows) se usa: 
# terraform init                                  (Este comando va a descargar el provider necesario para deployar el codigo. Esto lo determina por el tipo de bloque de codigo que tenemos)
# terraform plan                                  (Este comando va a generar un plan en base a nuestro codigo y va a presentarlo indicando las acciones que va a realizar)
                                               # Indica que ki qye va a crear se visualiza con un + en verde y va a realizar la lista de acciones descriptas
                                               # Si bien utilizamos content y filename, hay mas parametros. 

# para llevar a cabo el deployment se ejecuta
# terraform apply                               # este apply de fondo crea un plan y lo vuelve a presentar, NO SE BASA LO PRESENTADO CON EL COMANDO "terraform plan", al indicar yes avanza con la ejecucion