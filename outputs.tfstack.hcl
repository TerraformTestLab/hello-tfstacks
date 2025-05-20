output "random_pet_name" {
  description = "The generated random pet name"
  value       = component.random_pet.random_pet_name
  type        = string  # The type of the output value should be 
                        # A type specification is either a primitive type keyword (bool, number, string) 
                       # or a complex type constructor call, like list(string).
}
