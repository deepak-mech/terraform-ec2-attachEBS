resource  "null_resource"  "webremote"  {
    connection  {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("D:/Arth Automation Series/aws_private_keys/amazon_service.pem")
    host     =  aws_instance.os1.public_ip
  }

provisioner "remote-exec" {
        inline = [
                "sudo yum install httpd -y",
                "sudo yum install php -y",
                "sudo systemctl start httpd",
                "sudo systemctl enable httpd"
                ]
        }
}