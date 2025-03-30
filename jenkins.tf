variable "JENKINS_PASSWORD" {
    sensitive = true
}

module "jenkins-tf" {
  source = "git@github.com:OptimusPrimuser/jenkins-tf.git"
  vpc_id = aws_vpc.general_vpc.id
  keypair_name = "MyKeyPair"
  jenkins_admin_password = var.JENKINS_PASSWORD
}