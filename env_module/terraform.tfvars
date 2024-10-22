mrg = {
  rg1 = {
    name     = "msk"
    location = "southindia"
  }
}

mvnet = {
  vn1 = {
    name                = "kavnet"
    location            = "south india"
    resource_group_name = "msk"
    address_space       = ["10.0.0.0/16"]
  }
}

msub = {
  sub1 = {
    name                 = "frontsub"
    resource_group_name  = "msk"
    virtual_network_name = "kavnet"
    address_prefixes     = ["10.0.0.0/24"]
  }
  sub2 = {
    name                 = "backsub"
    resource_group_name  = "msk"
    virtual_network_name = "kavnet"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

mpip = {
  pip1 = {
    name                = "kapip"
    location            = "south india"
    resource_group_name = "msk"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "kapip1"
    location            = "south india"
    resource_group_name = "msk"
    allocation_method   = "Static"
  }
}


mnic = {
  nic1 = {
    name                = "kanic"
    location            = "south india"
    resource_group_name = "msk"
    subnet              = "sub1"
    public_ip           = "pip1"
  }

  nic2 = {
    name                = "kanic1"
    location            = "south india"
    resource_group_name = "msk"
    subnet              = "sub2"
    public_ip           = "pip2"
  }
}

mvm = {
  vm1 = {
    name                            = "kavm"
    location                        = "south india"
    resource_group_name             = "msk"
    size                            = "Standard_B1s"
    admin_username                  = "msyadav"
    admin_password                  = "password@123"
    disable_password_authentication = false
    nic                             = "nic1"
  }

  vm1 = {
    name                            = "kavm"
    location                        = "south india"
    resource_group_name             = "msk"
    size                            = "Standard_B1s"
    admin_username                  = "msyadav"
    admin_password                  = "password@123"
    disable_password_authentication = false
    nic                             = "nic2"
  }
}

