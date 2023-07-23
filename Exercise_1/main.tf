provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "Udacity-T2" {
  ami           = "ami-04823729c75214919" # Amazon Linux 2 Kernel 5.10 AMI 2.0.20230628.0 x86_64 HVM gp2
  instance_type = "t2.micro"
  count         = 4
}

resource "aws_instance" "Udacity-M4" {
  ami           = "ami-04823729c75214919" # Amazon Linux 2 Kernel 5.10 AMI 2.0.20230628.0 x86_64 HVM gp2
  instance_type = "m4.large"
  count         = 2
}
