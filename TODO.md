# ML Workspace Setup TODO List

## Infrastructure Setup (Terraform)

- [ ] Review and adjust EC2 instance type (g4dn.xlarge) to match home PC specs:
  - Compare with home specs: 64GB RAM, RTX 4070, i9-14900K
  - Consider g5.4xlarge or similar for better GPU/RAM match
- [ ] Update security group to restrict SSH access (currently 0.0.0.0/0)
- [ ] Add tags for cost tracking and resource management
- [ ] Create IAM role for EC2 to access S3

## S3 Configuration

- [ ] Set up lifecycle rules for cost optimization
- [ ] Configure bucket encryption
- [ ] Set up bucket policies for secure access
- [ ] Create scripts for initial 4TB data upload
  - Consider AWS DataSync or S3 CLI with multipart upload
  - Test upload speeds and methods

## EC2 Instance Setup

- [ ] Create base Ubuntu AMI with:
  - CUDA drivers
  - Python 3.x
  - Required ML libraries:
    - YOLO
    - Scikit-learn
    - TensorFlow
    - PyTorch
- [ ] Install and configure desktop environment (if needed)
  - Consider using XFCE or MATE for lightweight GUI
  - Set up VNC or RDP for remote desktop access
- [ ] Create startup/shutdown scripts
- [ ] Set up automated backups of important configs

## IAM & Security

- [ ] Create restricted IAM user for User 1 with permissions for:
  - EC2 start/stop
  - SSH/EC2 Instance Connect access
  - S3 read access
- [ ] Set up MFA for the IAM user
- [ ] Create IAM policies following principle of least privilege

## Documentation

- [ ] Write user guide for:
  - Starting/stopping EC2 instance
  - Connecting via SSH/EC2 Instance Connect
  - Running Python scripts
  - Transferring files to/from S3
- [ ] Document cost estimation and optimization strategies
- [ ] Create troubleshooting guide

## Testing & Validation

- [ ] Test EC2 performance with sample ML workloads
- [ ] Validate S3 access and transfer speeds
- [ ] Test instance start/stop procedures
- [ ] Verify all required Python packages work with CUDA
- [ ] Test backup and recovery procedures

## Cost Optimization

- [ ] Set up AWS Cost Explorer tags
- [ ] Configure CloudWatch alarms for cost thresholds
- [ ] Document expected costs for:
  - EC2 usage
  - S3 storage
  - Data transfer
