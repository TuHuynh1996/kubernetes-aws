output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.k8s.id
}

output "instance_ip" {
  description = "public ip of instance"
  value       = aws_instance.k8s.public_ip
}
