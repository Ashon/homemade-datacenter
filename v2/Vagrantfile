# -*- mode: ruby -*-
# vi: set ft=ruby :

hosts = [
  'machine-0',
  'machine-1',
  'machine-2',
]

image = 'generic/ubuntu1804'
subnet = '192.168.60'
ip_starts = 11

Vagrant.configure('2') do |config|
  hosts.each_with_index do |host, idx|
    host_ip = "#{subnet}.#{ip_starts + idx}"

    config.vm.define host do |node|
      node.vm.box = image

      node.vm.hostname = host

      # start with no network
      config.vm.provider 'virtualbox' do |vb|
        vb.cpus = '1'
        vb.memory = '1024'
        vb.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
        vb.customize ['modifyvm', :id, '--cpuexecutioncap', '50']
      end
    end
  end
end
