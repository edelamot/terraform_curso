# Fichero main.tf (Fichero principal del proyecto)
provider "aws" {
  region = "eu-west-3"
}

module "mi_modulo" {
  source   = "./modules/mimodulo"
  entrada1 = "Hola"
  entrada2 = "Mundo"
  entrada3 = "Terraform"

}

output "salida1" {
  value = module.mi_modulo.salida1
}

output "salida2" {
  value = module.mi_modulo.salida2
}

output "salida3" {
  value = module.mi_modulo.salida3
}