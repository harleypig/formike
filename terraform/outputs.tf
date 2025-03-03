output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ml_instance.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ml_instance.public_ip
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.data_bucket.id
}
