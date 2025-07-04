resource "aws_instance" "Monitoring" {
    count = length(var.instances)
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = merge (
        var.common_tags,
        {
            Name = var.instances[count.index]
    }
    )
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "This security allows all Inbound & outbound traffic"

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }
  
}