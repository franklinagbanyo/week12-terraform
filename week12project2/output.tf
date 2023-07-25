#output "jenkins_url" {
#   value = aws_instance.server.public_ip 
#}

#or do this

output "jenkins_url" {
  value = "http://${aws_instance.server.public_ip}:8080"
}

