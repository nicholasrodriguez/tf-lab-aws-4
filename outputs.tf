output "web_public_address" {
  value = "${aws_instance.web.public_ip}:8080"
}

output "web_public_ip" {
  value = aws_instance.web.public_ip
}

# Test MAP lookup
output "ami_value" {
  value = lookup(var.aws_amis, var.aws_region)
}

output "web_security_group_ids" {
  value = concat([aws_security_group.sg_app.id, aws_route_table_association.rta_subnet_public.id])
}
