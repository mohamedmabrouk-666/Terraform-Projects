#this file is important for state file of terraform share between all team on AWS
#and use dynamodb_table to prevent more than one of team write on state file in 
#same time 

    terraform {
      backend "s3" {
        bucket         = "terraform-test666" # Must match the bucket created above
        key            = "terraform.tfstate"         # Path and filename within the bucket
        region         = "us-east-1"                             # Region where the S3 bucket is located
        encrypt        = true                                    # Enable server-side encryption for the state file
        dynamodb_table = "test"                  # Optional: For state locking (recommended)
      }
    }