
# EXPLICACIÓN DE CÓDIGO HCL EN TERRAFORM

Cómo se compone la estructura del código. El código se llama HCL.

![Estructura](/MiPracticaTerraform/Teoria/capturas/HCL-Hashicorp-Configuration-Language-Declarative.jpg)

## Tipos de Bloques en Terraform

### Bloque Resource
- **resource**: El primer elemento es el tipo de bloque llamado `resource` o recurso. Aquí vamos a crear de manera declarativa los recursos que queremos desplegar (Instancias, VPC, Subnets, etc).

### Tipo de Recurso Local File
- **local_file**: Luego tenemos el tipo de recurso `local_file` (`local`=provider; `file`=recurso). Esta estructura brinda dos tipos de informaciones diferentes: `primerparametro_segundoparametro`. La palabra `local` en este caso hace referencia al proveedor local (nuestra computadora) y el segundo parámetro es el tipo de recurso que vamos a estar desplegando. En el código demostrado, al ejecutarse, va a generar un archivo con un mensaje dentro.

### Nombre del Recurso
- **mensaje**: El tercer parámetro es el nombre del recurso... `mensaje`, esto es un identificador para Terraform. Observa que el archivo no se va a llamar mensaje y tampoco el contenido va a tener la palabra mensaje. Esto hace referencia a un nombre lógico únicamente utilizado por Terraform para que luego podamos hacer referencia a este bloque de código más adelante en otro recurso.

> El tipo de bloque y el tipo de recursos son palabras reservadas de Terraform, pero el nombre del recurso puede ser cualquiera. `resource` y `local_file` pertenecen al lenguaje de manera reservada.

## Argumentos
(Depende de cada tipo de recurso, los argumentos varían)

BIBLIA PARA CONSULTAR ESTRUCTURAS ==> [https://registry.terraform.io](https://registry.terraform.io)

# PRIMER CÓDIGO (Práctica 1)

Es importante aclarar que **NO HAY** nombres reservados para nombrar archivos en Terraform.

El primer código que se ejecutó es:

```hcl
resource "local_file" "productos" {
    content = "Lista de productos"
    filename = "productos.txt"
}
```

Para ejecutarlo, se debe utilizar: 
`terraform init` 
> Si anteriormente no se inició terraform en el directorio. Este comando va a descargar el proveedor necesario para desplegar el código. Esto lo determina por el tipo de bloque de código que tenemos.

![terraforminit](/MiPracticaTerraform/Practica1/Capturas/init.jpg)

Acto seguido, se debe ejecutar:
`terraform plan`
> Este comando va a generar un plan en base a nuestro código y va a presentarlo indicando las acciones que va a realizar.
> Indica que lo que va a crear se visualiza con un + en verde y va a realizar la lista de acciones descritas.
> Si bien utilizamos `content` y `filename`, hay más parámetros.

![terraformplan](/MiPracticaTerraform/Practica1/Capturas/plan.jpg)

Para llevar a cabo el despliegue se ejecuta:
`terraform apply`
> Este `apply` de fondo crea un plan y lo vuelve a presentar, **NO** se basa en lo presentado con el comando `terraform plan`. Al indicar **yes** avanza con la ejecución.

![terraformapply](/MiPracticaTerraform/Practica1/Capturas/apply.jpg)
![terraformapplyok](/MiPracticaTerraform/Practica1/Capturas/apply-complete.jpg)

## Realizar Cambios en el Código

Si quisiera llevar a cabo un cambio, se debe realizar en el código:

```hcl
resource "local_file" "productos" {
    content = "Lista de productos para el mes próximo"
    filename = "productos.txt"
}
```

Luego del cambio en el código, ejecutamos `terraform plan` y validamos la información que nos brinda.

![terraformplanchange](/MiPracticaTerraform/Practica1/Capturas/plan-change.jpg)

> Se puede observar que nos está avisando que va a destruir el archivo y lo va a volver a crear, ya que no tiene posibilidad de cambiar o editar el contenido del mismo.

Con un `terraform apply` y aceptando el cambio, va a realizar este proceso indicado.

## Eliminar Recursos

Si tenemos que eliminarlo, contamos con el comando:
`terraform destroy`

![terraformdestroy](/MiPracticaTerraform/Practica1/Capturas/destroy.jpg)
![terraformdestroyok](/MiPracticaTerraform/Practica1/Capturas/destroy-yes.jpg)