# variables de entrada del modulo
variable "entrada1" {
default = "valor1"
}

variable "entrada2" {
default = "valor2"
}

variable "entrada3" {
default = "valor3"
}


# outputs del modulo
output "salida1" {
    value=var.entrada1
}

output "salida2" {
    value=var.entrada2
}

output "salida3" {
    value=var.entrada3
}