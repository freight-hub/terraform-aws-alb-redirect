output "this_lb_dns_name" {
  description = "Application Load Balancer fqdn"
  value       = aws_lb.this.dns_name
}

output "http_listener_arn" {
  description = "ALB HTTP listener ARN"
  value       = aws_lb_listener.http.arn
}

output "https_listener_arn" {
  description = "ALB HTTPS listener ARN"
  value       = var.https_enabled ? aws_lb_listener.https[0].arn : null
}

output "this_vpc_arn" {
  description = "Virtual Private Cloud ARN"
  value       = aws_vpc.this.arn
}
