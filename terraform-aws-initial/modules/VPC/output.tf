output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_id_a" {
  value = element(aws_subnet.public_subnet.*.id, 0)
}
output "public_subnets_id_b" {
  value = element(aws_subnet.public_subnet.*.id, 1)
}

output "public_subnets_id" {
  value = ["${aws_subnet.public_subnet.*.id}"]
}

output "private_subnets_id" {
  value = ["${aws_subnet.private_subnet.*.id}"]
}

output "db_subnet_id" {
  value = ["${aws_subnet.db_subnet.*.id}"]
}

output "db_subnet_id_a" {
  value = element(aws_subnet.db_subnet.*.id, 0)
}

output "db_subnet_id_b" {
  value = element(aws_subnet.db_subnet.*.id, 1)
}

output "public_route_table" {
  value = aws_route_table.public.id
}