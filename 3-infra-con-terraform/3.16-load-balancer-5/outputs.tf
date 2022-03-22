output "dns_publica_servidor_1" {
  description = "DNS pública del servidor"
  value       = "http://${aws_instance.servidor_1.public_dns}:8080"
}

output "dns_publica_servidor_2" {
  description = "DNS pública del servidor"
  value       = "http://${aws_instance.servidor_2.public_dns}:8080"
}

output "dns_load_balancer" {
  description = "DNS pública del load balancer"
  value       = "http://${aws_lb.alb.dns_name}"
}
