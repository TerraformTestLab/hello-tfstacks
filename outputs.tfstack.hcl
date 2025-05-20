output "random_pet_name" {
  description = "The generated random pet name"
  value       = component.random_pet.random_pet_name
  type        = string  # The type of the output value should be 
                        # A type specification is either a primitive type keyword (bool, number, string) 
                       # or a complex type constructor call, like list(string).
}


output "complex_map" {
  description = "Complex type"
  value = local.complex_map
  type = object({
  address = object({
    city = string
    state = string
    street = string
  })
  age = number
  hobbies = tuple([string, string, string])
  is_student = bool
  name = string
})
}
