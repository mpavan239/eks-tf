# VPC Configuration
vpc_block                  = "192.168.16.0/20"
vpc_name                   = "EKS-PRODUCTION-VPC"
vpc_secondary_block        = "100.64.0.0/16"
peer_vpc_block             = "192.168.32.0/20"

# Subnets
subnet01_block             = "192.168.16.0/24"
subnet02_block             = "192.168.17.0/24"
subnet01_name              = "PUBLIC-1"
subnet02_name              = "PUBLIC-2"

subnet01_private_block     = "192.168.18.0/24"
subnet02_private_block     = "192.168.19.0/24"
subnet01_private_name      = "PRIVATE-1"
subnet02_private_name      = "PRIVATE-2"

subnet01_cluster_block     = "100.64.1.0/28"
subnet02_cluster_block     = "100.64.2.0/28"
subnet01_cluster_name      = "PRIVATE-CLUSTER-SECONDARY-1"
subnet02_cluster_name      = "PRIVATE-CLUSTER-SECONDARY-2"

subnet01_private_secondary_block = "100.64.16.0/20"
subnet02_private_secondary_block = "100.64.32.0/20"
subnet01_private_secondary_name  = "PRIVATE-WORKER-SECONDARY-1"
subnet02_private_secondary_name  = "PRIVATE-WORKER-SECONDARY-2"
