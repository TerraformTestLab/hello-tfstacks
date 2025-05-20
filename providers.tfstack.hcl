required_providers {
  random = {
    source  = "hashicorp/random"
    version = "3.7.1"
  }
}
locals {
  complex_map = {
    "name" = "alex"
    "age"  = 30
    "address" = {
      "street" = "123 Main St"
      "city"   = "New York"
      "state"  = "NY"
    }
    "hobbies"    = ["reading", "gaming", "hiking"]
    "is_student" = false

  }
}
provider "random" "this" {}
