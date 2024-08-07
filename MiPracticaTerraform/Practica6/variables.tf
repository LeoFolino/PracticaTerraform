variable "virginia_cidr" {
    description = "CIDR Virginia"
    type = string
    sensitive = false
}

variable "public_subnet" {
  description = "CIDR public subnet"
  type = string
}

variable "private_subnet" {
  description = "CIDR private subnet"
  type = string
}

variable "tags" {
  description = "Tags del proyecto"
  type        = map(string)
}