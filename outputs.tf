output "vpc_id" {
  value = aws_vpc.main.id
}

output "nat_gateway_ip_a" {
  value = aws_eip.nat_eip_a
}

output "nat_gateway_ip_b" {
  value = aws_eip.nat_eip_b
}


# output "load_balancer_dns" {
#   value = aws_lb.a
# }
