output "random_pet_name" {
  description = "The generated random pet name"
  value       = component.random_pet.random_pet_name
  type        = any
}
