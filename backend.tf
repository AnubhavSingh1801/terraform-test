# --- root/backend.tf ---

terraform {
  backend "s3" {
    bucket = "fycffoghggjctxxhc"
    key    = "statefile/remote.tfstate"
    region = "us-west-2"
  }
}