variable "vpc_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_secondary_block" {
  description = "The secondary CIDR block for the VPC"
  type        = string
}

variable "subnet01_block" {
  description = "CIDR block for public subnet 01"
  type        = string
}

variable "subnet02_block" {
  description = "CIDR block for public subnet 02"
  type        = string
}

variable "subnet01_private_block" {
  description = "CIDR block for private subnet 01"
  type        = string
}

variable "subnet02_private_block" {
  description = "CIDR block for private subnet 02"
  type        = string
}

variable "subnet01_cluster_block" {
  description = "CIDR block for cluster subnet 01"
  type        = string
}

variable "subnet02_cluster_block" {
  description = "CIDR block for cluster subnet 02"
  type        = string
}

variable "subnet01_private_secondary_block" {
  description = "CIDR block for private secondary subnet 01"
  type        = string
}

variable "subnet02_private_secondary_block" {
  description = "CIDR block for private secondary subnet 02"
  type        = string
}

variable "subnet01_name" {
  description = "Name for public subnet 01"
  type        = string
}

variable "subnet02_name" {
  description = "Name for public subnet 02"
  type        = string
}

variable "subnet01_private_name" {
  description = "Name for private subnet 01"
  type        = string
}

variable "subnet02_private_name" {
  description = "Name for private subnet 02"
  type        = string
}

variable "subnet01_cluster_name" {
  description = "Name for cluster subnet 01"
  type        = string
}

variable "subnet02_cluster_name" {
  description = "Name for cluster subnet 02"
  type        = string
}

variable "subnet01_private_secondary_name" {
  description = "Name for private secondary subnet 01"
  type        = string
}

variable "subnet02_private_secondary_name" {
  description = "Name for private secondary subnet 02"
  type        = string
}

variable "peer_vpc_block" {
  description = "CIDR block of the peer VPC"
  type        = string
}
