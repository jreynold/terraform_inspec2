control 'azurerm_network_interface' do
  describe azurerm_network_interface(resource_group: 'myResourceGroup2', name: 'myNIC') do
    it { should exist }
    its('private_ip') { should cmp '52.142.12.43' }
  end 
end
