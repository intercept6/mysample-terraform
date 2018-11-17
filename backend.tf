terraform {
  required_version = "= 0.11.10"

  backend "s3" {
    bucket = "circleci-terraform-state-katoryo"  //e.g. terraform-state-bucket
    key    = "terraform.tfstate.aws" //この文字列でtfファイルが作られてS3に置かれる 
    region = "ap-northeast-1" //S3のリージョン
  }
}
