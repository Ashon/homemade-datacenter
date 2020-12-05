# -*- mode: ruby -*-
# vi: set ft=ruby :

hosts = [
  'router-0',
  'router-1',

  'machine-0',
  'machine-1',
  'machine-2',
]

image = 'ubuntu/bionic64'
subnet = '192.168.60'
ip_starts = 11

Vagrant.configure('2') do |config|
  hosts.each_with_index do |host, idx|
    host_ip = "#{subnet}.#{ip_starts + idx}"

    config.vm.define host do |node|
      node.vm.box = image

      node.vm.hostname = host
      node.vm.network 'private_network', ip: host_ip
      #node.ssh.host = host_ip
      #node.ssh.port = 22

      config.vm.provider 'virtualbox' do |vb|
        vb.cpus = '1'
        vb.memory = '1024'
      end
    end
  end
end
