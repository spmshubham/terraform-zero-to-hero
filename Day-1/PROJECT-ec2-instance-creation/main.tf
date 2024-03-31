
provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

#this will verify if terraform has access to aws or not 

resource "aws_instance" "example1" {
    ami = "ami-080e1f13689e07408"  # Specify an appropriate AMI ID, select the ami id after the reqgion is selected on aws
#Each region have different ami id for smae instance 
    instance_type = "t3.nano"
    subnet_id = "subnet-00dbce57335df685a"
    #subnet is mandatory of creating instance 
    key_name = "terraform-aws-key1"

}



