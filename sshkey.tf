resource "aws_key_pair" "openai_ssh_key" {
  key_name   = "openai_ssh_key"
  public_key = file("/Users/andrew/.ssh/id_rsa.pub")
}
