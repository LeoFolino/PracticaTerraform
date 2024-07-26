# EXPLICACION DE CODIGO HCL EN TERRAFORM

Como se compone la estructura del codigo. El codigo se llama HCL

![Estructura](/MiPracticaTerraform/Sección%20Principal/capturas/HCL-Hashicorp-Configuration-Language-Declarative.jpg)

## TIPO DE BLOQUE:
- **resource**: El primer elemento es el tipo de bloque llamado resource o recurso: Aca vamos a crear de manera declarativa los recurso que queremos deployar (Instancias, VPC, Subnets, etc).

- **local_file**: Luego tenemos el tipo de recurso `local_file` (local=provider; file=recurso). Esta estructura brinda 2 tipos de informaciones diferentes: `primerparametro_segundoparametro`. La palabra local en este caso hace referencia al provider local (nuestra computadora) y el segundo parametro es el tipo de recurso que vamos a estar deployando. En el codigo demostrado, al ejecutarse, va a generar un archivo con un mensaje dentro.

- **mensaje**: El tercer parametro es el nombre del recurso... `mensaje`, esto es un identificador para Terraform. Observa que el archivo no se va a llamar mensaje y tampoco el contenido va a tener la palabra mensaje. Esto hace referencia a un nombre logico unicamente utilizado por Terraform para que luego podamos hacer referencia a este bloque de codigo mas adelante en otro recurso.

> El tipo de bloque y el tipo de recursos son palabras reservadas de Terraform, pero el nombre del recurso puede ser cualquiera. `resource` y `local_file` pertenecen al lenguaje de manera reservada.

## ARGUMENTOS:
(Depende cada tipo de recurso, los argumentos varian) ::: BIBLIA PARA CONSULTAR ESTRUCTURAS ==> [https://registry.terraform.io](https://registry.terraform.io)