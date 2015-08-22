# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box          = "windows_10"
  config.vm.communicator = "winrm"

  ["vmware_fusion", "vmware_workstation"].each do |provider|
    config.vm.provider provider do |v, override|
      v.gui = true
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
      v.vmx["vhv.enable"] = "TRUE"
      v.vmx["hypervisor.cpuid.v0"] = "FALSE"
    end
  end

  config.vm.provision "shell", path: "scripts/provision.ps1", privileged: false
end