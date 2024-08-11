provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudfront_distribution" "example" {
  origin {
    domain_name = "example.com" # Substitua por seu nome de domínio real.
    origin_id   = "exampleOrigin" # Substitua por um ID de origem apropriado.
    }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html" # Substitua se o nome do arquivo for diferente.

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "exampleOrigin"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
