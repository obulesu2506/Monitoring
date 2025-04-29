variable "instances" {
    type = list(string)
    default = [ "prometheus", "node-1", "node-2" ]
}

variable "instance_type" {
    type = string
    default = "t3.micro" 
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This AMI ID is devops Practice"
}

variable "from_port" {
    type = number
    default = "0"  
}

variable "to_port" {
    type = number
    default = "0"  
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]  
}

variable "common_tags" {
    type = map(string)
    default = {
      environemnt = "dev"
       project = "Monitoring"
    }
}