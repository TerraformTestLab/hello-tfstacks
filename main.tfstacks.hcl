required_providers {
  random = {
    source  = "hashicorp/random"
    version = "3.7.1"
  }
}

provider "random" "this" {}

component "random_pet" {
  source = "./modules/random_pet"
  providers = {
    random = random.this
  }
  inputs = {
    pet_prefix = var.pet_prefix
  }
}

variable "pet_prefix" {
  description = "Prefix for the random pet name"
  type        = string
  default     = "my-pet"
}

output "random_pet_name" {
  description = "The generated random pet name"
  value       = component.random_pet.random_pet_name
}

deployment "test" {
    inputs = {
        pet_prefix = "hello-tfstacks-pet"
    }
}



