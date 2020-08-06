control 'vm up and running' do
  describe azurerm_virtual_machine(resource_group: 'myResourceGroup2', name: 'myVM') do
    it { should exist }
    it { should be_running }
  end
  describe azurerm_public_ip(resource_group: 'myResourceGroup2', name: 'myVM') do
    its('properties.ipAddress') { should cmp '52.142.12.43' }
  end
  
end
