
resource "aws_key_pair" "sshkey" {
  key_name   = var.keypairname
  public_key = file(var.sshpubkey)
}
