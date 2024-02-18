# Define a load balancer
resource "aws_lb" "SN_lb" {
  name               = "SN-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.SN_sg.id]
  subnets            = [aws_subnet.public_subnet.id, aws_subnet.public2_subnet.id]

}

# Define a target group
resource "aws_lb_target_group" "SN_tg" {
  name        = "SN-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = aws_vpc.my_vpc.id
}


resource "aws_lb_listener" "SN_listener" {
  load_balancer_arn = aws_lb.SN_lb.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.SN_tg.arn
  }
}