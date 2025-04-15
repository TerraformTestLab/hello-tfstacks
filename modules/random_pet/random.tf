variable "pet_prefix" {
    description = "Prefix for the random pet name"
    type        = string
    default     = "my-pet"
}

resource "random_pet" "pet" {
    prefix = var.pet_prefix
    length = 2
}

output "random_pet_name" {
    description = "The generated random pet name"
    value       = random_pet.pet.id
}