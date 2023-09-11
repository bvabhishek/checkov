resource "aws_db_instance" "example" {
  identifier            = "my-secure-db"  
  engine                = "mysql"        
  instance_class        = "db.t2.micro" 
  allocated_storage     = 20             
  username              = "db_user"      
  password              = "password123"  
  publicly_accessible   = false    
  #publicly_accessible   = true       


  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  
  storage_encrypted = false

 
  backup_retention_period = 7
}

