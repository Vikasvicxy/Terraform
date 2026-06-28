resource_group = {

  name     = "Terraform-VM-RG"
  location = "east us"

}

virtual_network = {

  name          = "Terraform-VNet1"
  address_space = ["10.0.0.0/16", "194.0.0.0/16"]

}

subnet = {

  name             = "Terraform-Subnet1"
  address_prefixes = ["10.0.1.0/26"]

}

network_security_group = {

  name = "Terraform-NSG1"

}

network_security_rule = {

  name                       = "Allow-SSH"
  prioirity                  = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "22"
  source_address_prefix      = "*"
  destination_address_prefix = "*"

}

public_ip = {

  name              = "Terraform-PublicIP"
  allocation_method = "Static"
  sku               = "Standard"

}

network_interface = {

  name                          = "Terraform-NIC1"
  ip_configuration_name         = "internal"
  private_ip_address_allocation = "Dynamic"

}

virtual_machine = {

  name = "Terraform-VM1"
  size = "Standard_D2lds_v7"

  admin_username = "azureuser"
  admin_password = "azureuser@1234"

  os_disk = {

    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

  }

  image = {

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"

  }

}

storage_account = {

  name                     = "vikasterraformsa77"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}


tags = {

  Environment = "Dev"
  Owner       = "Vikas"
  Project     = "Terraform VM"
  ManagedBy   = "Terraform"

}
