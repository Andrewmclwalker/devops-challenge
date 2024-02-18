variable "keypairname" {
  default = "mysshkey"
}

variable "sshpubkey" {
  default = "~/.ssh/id_ed25519.pub"
}

variable "server_port" {
  default = "8080"
}

variable "ami_id" {
  default = "ami-085284d24fe829cd0"
}

variable "region" {
  default = "us-west-1"
}


variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  default     = "192.168.1.0/24"
}

variable "public2_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  default     = "192.168.3.0/24"
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  default     = "192.168.2.0/24"
}


variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "192.168.0.0/16"
}
