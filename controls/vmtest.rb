control 'azurerm_virtual_machine' do
  describe azurerm_virtual_machine(resource_group: 'myResourceGroup2', name: 'myVM') do
    it { should exist }
    it { should be_running }
  end
end
