component "random_pet" {
  source = "./modules/random_pet"
  providers = {
    random = random.this
  }
  inputs = {
    pet_prefix = var.pet_prefix
  }
}