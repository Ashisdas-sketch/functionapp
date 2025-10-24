variable "rg_detail" {
  description = "A map of resource group details"
  type = map(object({
    name     = string
    location = string
  }))
  
}