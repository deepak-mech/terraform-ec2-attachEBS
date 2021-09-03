resource  "aws_instance"  "os1"  {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
tags = {
             Name = "TF OS 11"
             }
security_groups = [ "webport_allow" ]
key_name = "amazon_service"
}