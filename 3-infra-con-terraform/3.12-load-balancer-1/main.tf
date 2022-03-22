# -------------------------
# Define el provider de AWS
# -------------------------
provider "aws" {
  region = "eu-west-1"
}

# ---------------------------------------
# Define una instancia EC2 con AMI Ubuntu
# ---------------------------------------
resource "aws_instance" "servidor_1" {
  ami                    = "ami-0aef57767f5404a3c"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mi_grupo_de_seguridad.id]

  // Escribimos un "here document" que es
  // usado durante la inicialización
  user_data = <<-EOF
              #!/bin/bash
              echo "Hola Terraformers! Soy servidor 1" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags = {
    Name = "servidor-1"
  }
}

# ----------------------------------------------
# Define la segunda instancia EC2 con AMI Ubuntu
# ----------------------------------------------
resource "aws_instance" "servidor_2" {
  ami                    = "ami-0aef57767f5404a3c"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mi_grupo_de_seguridad.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hola Terraformers! Soy servidor 2" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags = {
    Name = "servidor-2"
  }
}

# ------------------------------------------------------
# Define un grupo de seguridad con acceso al puerto 8080
# ------------------------------------------------------
resource "aws_security_group" "mi_grupo_de_seguridad" {
  name = "primer-servidor-sg"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Acceso al puerto 8080 desde el exterior"
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
  }
}
