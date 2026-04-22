output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_public_ip" {
  value = aws_instance.main.public_ip
}

output "ec2_instance_id" {
  value = aws_instance.main.id
}

output "website_url" {
  value = "http://${aws_instance.main.public_ip}"
}