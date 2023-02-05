terraform {
 backend "s3"{
       bucket = "bucket-s3-backend"
       region = "us-east-2"
       key = "terraform/remotestate/terraform.tfstate"

       dynamodb_table = "backend"
     } 
}

module "module-vpc" {
    source = "./modules/"
    vpc-cidr-block = "10.0.0.0/16"
    PvtSub-cidr-block = "10.0.2.0/24"
    PubSub-cidr-block = "10.0.1.0/24"
    public_instance_name = "Public-Instance"
    private_instance_name = "Private-Instance" 
    key_pair = "ver"
    ami = "ami-0ab0629dba5ae551d"
    instance-type = "t2.micro"
}
