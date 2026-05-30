aws_region  = "us-east-1"
environment = "dev"
vpc_cidr    = "10.0.0.0/16"

azs = [
  "us-east-1a",
  "us-east-1b"
]

allocated_storage = 20
storage_type      = "gp2"
engine            = "mysql"
engine_version    = "8.0"
instance_class    = "db.t3.micro"
db_name           = "mydb"
username          = "admin"
password          = "password"
platform          = "payment"
os_type           = "linux"
team              = "platform_engineering"
ami_id            = "ami-091138d0f0d41ff90"
instance_type     = "t2.micro"
key_name          = "aws_mac_key"
cluster_version   = "1.35"