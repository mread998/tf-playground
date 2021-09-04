variable "dev_tags" {
    type = map(string)
    default = { "Name": "THCDEVVPCIAD001", "Enviroment": "dev",  "Project": "thunderchrome", "Owner": "Marc Read", "Url": "http://www.thunderchrome.com" } 
}

variable "dev_pub_sub_a" {
    type = string
    default = "10.1.0.0/24"  
}

variable "dev_pub_sub_b" {
    type = string
    default = "10.3.0.0/24"  
}

variable "dev_pub_sub_c" {
    type = string
    default = "10.5.0.0/24"  
}

variable "dev_pri_sub_a" {
    type = string
    default = "10.2.0.0/24"  

}

variable "dev_pri_sub_b" {
    type = string
    default = "10.4.0.0/24"  
}

variable "dev_pri_sub_c" {
    type = string
    default = "10.6.0.0/24"  
}

