provider "aws" {
    region = "ap-northeast-2"

    version = "~> 2.0"

}

resource "aws_iam_user" "example" {
    count = 3
    # name = "neo.${count.index}"
    name = var.user_names[count.index]
    
  
}