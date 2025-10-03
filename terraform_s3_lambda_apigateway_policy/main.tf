# Attach policies directly to the IAM user by name
data "aws_iam_user" "dev" {
  user_name = "dev-pratyush"
}

variable "user_name" {
  default = "dev-pratyush"
}

resource "aws_iam_user_policy_attachment" "lambda" {
  user       = var.user_name
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
}

resource "aws_iam_user_policy_attachment" "s3" {
  user       = var.user_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user_policy_attachment" "apigateway" {
  user       = var.user_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"
}
