provider "aws" {
  region = "ap-northeast-2"  # 원하는 AWS 지역으로 변경하세요.
}

resource "aws_s3_bucket" "static_website" {
  bucket = "terraform-s3-camelodian-web-hosting"  # 고유한 버킷 이름을 지정하세요.
#   acl    = "public-read"

  website {
    index_document = "index.html"  # 웹 페이지의 기본 문서 이름을 지정하세요.
    # error_document = "error.html"  # 오류 페이지의 문서 이름을 지정하세요.
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.static_website.bucket
  key    = "index.html"
#   acl    = "public-read"

  source = "./index.html"  # 로컬에 있는 index.html 파일의 경로를 지정하세요.
}

# resource "aws_s3_bucket_object" "error" {
#   bucket = aws_s3_bucket.static_website.bucket
#   key    = "error.html"
#   acl    = "public-read"

#   source = "path/to/your/error.html"  # 로컬에 있는 error.html 파일의 경로를 지정하세요.
# }

# 만약 정적 자원 파일들을 여러 개 업로드하려면 위와 같은 방식으로 추가합니다.

resource "aws_s3_bucket_policy" "s3_policy" {
  bucket = aws_s3_bucket.static_website.bucket

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "${aws_s3_bucket.static_website.arn}/*"
    }
  ]
}
EOF
}


output "website_url" {
  value = aws_s3_bucket.static_website.website_endpoint
}
