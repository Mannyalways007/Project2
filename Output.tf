output "vpc-id" {
  value = module.vpc.vpc-id
}
output "security-id" {
  value = module.security.security-id
}
output "ec2-id" {
  value = module.ec2.instance-id
}
output "public-ip" {
  value = module.ec2.publi_ip
}
output "private-id" {
  value = module.ec2.private_ip
}