terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.84.0"
      }
    }
    backend "s3" {
        bucket = "82s-dont-tf-remote-state"
        key = "Infra-Monitoring"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true //alternate for native locking in S3 itself
      
    }
}
provider "aws" {
    //configuration options
    region = "us-east-1"
}