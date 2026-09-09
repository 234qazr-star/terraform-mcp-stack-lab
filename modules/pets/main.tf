terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

variable "pet_length" {
  type = number
}

resource "random_pet" "this" {
  length = var.pet_length
}

output "pet_name" {
  value = random_pet.this.id
}
