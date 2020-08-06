control 'azurerm_public_ip' do
  describe azurerm_public_ip(resource_group: 'myResourceGroup2', name: 'myPublicIP') do
    it { should exist }
    its('properties.ipAddress') { should cmp '52.142.12.43' }
  end 
end
