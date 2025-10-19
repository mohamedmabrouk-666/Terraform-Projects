resource "aws_key_pair" "my_key" {
  key_name   = "my-keypair"
  public_key = file("~/.ssh/id_ed25519.pub")  # ضع هنا مسار المفتاح العام عندك
}