component "pets" {
  source = "./modules/pets"

  inputs = {
    pet_length = var.pet_length
  }

  providers = {
    random = provider.random.this
  }
}
