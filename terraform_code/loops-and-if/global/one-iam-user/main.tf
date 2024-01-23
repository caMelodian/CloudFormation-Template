provider "aws" {
    region = "ap-northeast-2"

    version = "~> 2.0"

}

resource "aws_iam_user" "example" {
    count = length(var.user_names)
    # name = "neo.${count.index}"
    name = var.user_names[count.index]
    
  
}