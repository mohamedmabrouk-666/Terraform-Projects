# resource "aws_lb" "app_lb" {
#   name               = "app-loadbalancer"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = []
#   subnets            = [aws_subnet.public_1.id, aws_subnet.public_2.id]

#   tags = {
#     Name = "app-lb"
#   }
# }
