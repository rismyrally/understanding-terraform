resource "aws_db_instance" "db_instance" {
  allocated_storage          = 10
  storage_type               = "standard"
  db_name                    = var.db_name
  engine                     = "postgres"
  engine_version             = "16.3"
  instance_class             = "db.t3.micro"
  username                   = var.db_user
  password                   = var.db_pass
  skip_final_snapshot        = true
  auto_minor_version_upgrade = true # This allows any minor version within the specified major engine_version above. However, it also enables AWS to automatically upgrade the minor version of your database
}
