resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = "us-west-1b"

  tags = {
    Name = "SN Public Subnet"
  }
}

resource "aws_subnet" "public2_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public2_subnet_cidr_block
  availability_zone = "us-west-1a"

  tags = {
    Name = "SN Public2 Subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = "us-west-1b"

  tags = {
    Name = "SN Private Subnet"
  }
}




