# this is mandatory, user should supply
variable "ami_id" {
  type        = string
  #default     = ""
}

# optional, default value is t3.micro.user can always override
variable "instance_type" {
    default = "t3.micro"
    type = string
    validation {
        condition = contains (["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "instance type can only be either 't3.micro' or 't3.small' or 't3.medium' only..!"
    }
}

# this is mandatory, user should supply
variable "security_group_ids" {
    type = list(string)
}

