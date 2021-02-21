module "vpc" {
  source = "../Modules/network"

  rt1_name = "testrt1pub"
  rt2_name = "testrtpri"
  subnet1_az = "us-east-1a"
  subnet1_cidr = "10.0.1.0/24"
  subnet2_az = "us-east-1b"
  subnet2_cidr = "10.0.2.0/24"
  subnet2_name = "testsubpri"
  subnet_name = "testsubpub"
  tenancy_name = "default"
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "test"
}
module "security" {
  source = "../Modules/security"

  sshcidr_block = "69.141.151.206/32"
  tlscidr_block = "0.0.0.0/0"
  vpc-id = module.vpc.vpc-id
}

module "ec2" {
  source = "../Modules/ec2"
  ami-id = var.amiID
  instance-type = var.instanceType
  key-pair = var.KeyPair
  security-group = module.security.security-id
  subnet-idPub = module.vpc.public-subnet-id
  tag-name = var.Tagname
}
