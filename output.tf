

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "alb_arn" {
  value = aws_lb.SN_lb.arn
}
output "alb_dns_name" {
  description = "DNS name of the load balancer"
  value       = aws_lb.SN_lb.dns_name
}