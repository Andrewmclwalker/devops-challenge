provider "aws" {

  region = var.region
}

resource "aws_launch_template" "sn-template" {
  name_prefix            = "sn-template"
  image_id               = var.ami_id
  key_name               = aws_key_pair.sshkey.key_name
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.SN_sg.id]
  user_data              = filebase64("${path.module}/sn.sh")

tags = {
    Name = "sn_challenge"
  }
}

resource "aws_autoscaling_group" "sn_ASG" {
  name = "sn_ASG"
  #availability_zones  = ["us-west-1b"]
  desired_capacity    = 1
  max_size            = 2
  min_size            = 1
  target_group_arns   = [aws_lb_target_group.SN_tg.id]
  vpc_zone_identifier = [aws_subnet.private_subnet.id]

  launch_template {
    id      = aws_launch_template.sn-template.id
    version = "$Latest"
  }
}


resource "aws_autoscaling_attachment" "sn_attachment" {
  autoscaling_group_name = aws_autoscaling_group.sn_ASG.id
  lb_target_group_arn    = aws_lb_target_group.SN_tg.arn
}