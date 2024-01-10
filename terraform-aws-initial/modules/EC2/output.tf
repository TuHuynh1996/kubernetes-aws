output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.gpt.id
}

output "instance_ip" {
  description = "public ip of instance"
  value       = aws_instance.gpt.public_ip
}
