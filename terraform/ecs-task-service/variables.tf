variable "subnet1" {
    type = string
    default = "subnet-03e0485473c8c1ae5"
  
}

variable "subnet2" {
    type = string
    default = "subnet-020c229a82250c5a9"
  
}

variable "service_name" {
    type = string 
    default = "newman-service"
}

variable "task_family" {
    type = string 
    default = "newman-task"
}

variable "log_group_name" {
    type = string 
    default = "newman-log"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "created_by" {
    type = string
    default = "vara"
}

variable "region" {
    type = string
    default = "ap-south-1"
  
}