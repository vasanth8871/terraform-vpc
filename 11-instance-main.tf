###############################################################################
# appserver
###############################################################################

resource "aws_instance" "appserver" {

  ami                          =  var.ami
  instance_type                =  var.type
  subnet_id                    =  aws_subnet.public1.id
  vpc_security_group_ids       =  [ aws_security_group.appserver.id]
  key_name                     =  aws_key_pair.key.id
  tags = {
    Name = "${var.project}-appserver"
    Project = var.project
  }
  
}

###############################################################################
# database
###############################################################################

resource "aws_instance" "database" {

  ami                          =  var.ami
  instance_type                =  var.type
  subnet_id                    =  aws_subnet.private1.id
  vpc_security_group_ids       =  [ aws_security_group.database.id]
  key_name                     =  aws_key_pair.key.id
  tags = {
    Name = "${var.project}-database"
    Project = var.project
  }
  
}
