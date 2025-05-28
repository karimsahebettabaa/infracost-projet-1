resource "aws_db_instance" "mariadb" {
  allocated_storage    = 100
  engine               = "mariadb"
  engine_version       = "10.6"
  instance_class       = "db.t3.medium"
  name                 = "mydb"
  username             = "admin"
  password             = var.db_password
  parameter_group_name = "default.mariadb10.6"
  skip_final_snapshot  = true
  publicly_accessible  = false
  multi_az             = true
  storage_encrypted    = true

  vpc_security_group_ids = [var.rds_security_group]
  db_subnet_group_name   = var.rds_subnet_group

  tags = {
    Environment = var.environment
  }
}
