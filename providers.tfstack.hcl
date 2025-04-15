required_providers {
  random = {
    source  = "hashicorp/random"
    version = "3.7.1"
  }
}

provider "random" "this" {}