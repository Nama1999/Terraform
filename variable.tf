variable "tenant_id" {
  type = string
}
variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}

/*variable "RG" {
  type = list(object({
    name     = string
    location = string
  }))

}*/

variable "RGname" {
    type = list
    default = ["Ajax1","Enid1","Bobby"]
}

variable "location" {
    type = string
    default = "East US"
}

variable "RG" {
  type = string
  
}