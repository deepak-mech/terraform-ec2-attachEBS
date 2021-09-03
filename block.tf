resource  "aws_ebs_volume"  "st1"  {
  availability_zone  =  aws_instance.os1.availability_zone
  size  =  1
  tags  =  {
                   Name = "Linux World New HD"
                }
}