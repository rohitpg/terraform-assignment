## edcast Assignment
# Pre-Requisites
Install the Terraform using https://www.terraform.io/downloads.html

If you are using AWS EC2 Instance
Create an IAM Role with S3 Full Access and attach the same with EC2 Instance(as per best practice)

Or, using Local Machine
Install AWS CLI then generate the IAM User Access and Secret Key and configure your local machine with the same. You can provide the access and secret keys in provider.tf file
IAM User should have access to EC2 and S3

Verify the terraform version
```
terraform version
```

```
Note: For my testing purpose, I do have installed the latest version 1.0.3
```

# Creating a static website using Terraform
For this assignment I do have used the default name for the bucket "website-static-bucket-321"
This can be updated in the variables.tf file
For any change to the region, where you want to create the S3 Bucket that can be updated in the provider.tf file
After initialising and planning, you can deploy the code using below command:
```
terraform apply --auto-approve
```

Once this apply complete, you will get the final output S3 Endpoint to access the static page of Website.
Example:
```
Apply complete! Resources: X added, X changed, X destroyed.

Outputs:

website_url = "bucketname.s3-website-region.amazonaws.com"
```
