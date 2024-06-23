# General Variables
variable "app_name" {
  description = "The name of the web application."
  type        = string
  default     = "web-app"
}

variable "environment_name" {
  description = "The deployment environment for the application (e.g., dev, stag, prod)."
  type        = string
  default     = "dev"
}

# EC2 Variables
variable "ami" {
  description = "The Amazon Machine Image (AMI) ID for the EC2 instance."
  type        = string
  default     = "ami-08a0d1e16fc3f61ea" # Amazon Linux 2023 AMI
}

variable "instance_type" {
  description = "The EC2 instance type (e.g., t2.micro)."
  type        = string
  default     = "t2.micro"
}

# S3 Variables
variable "bucket_prefix" {
  description = "The prefix for the S3 bucket name used for application data storage."
  type        = string
}

# Route 53 Variables
variable "create_dns_zone" {
  description = "Determines whether to create a new Route 53 DNS zone (true) or use an existing one (false)."
  type        = bool
  default     = false
}

variable "domain" {
  description = "The domain name for the website."
  type        = string
}

# RDS Variables
variable "db_name" {
  description = "The name of the RDS database."
  type        = string
}

variable "db_user" {
  description = "The username for the RDS database."
  type        = string
}

variable "db_pass" {
  description = "The password for the RDS database. This variable is marked as sensitive."
  type        = string
  sensitive   = true
}
