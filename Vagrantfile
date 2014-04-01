VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu-precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
  end

  config.vm.synced_folder = 'build', '/var/www'

  config.vm.network :forwarded_port, guest: 80, host:8080
  config.vm.network :forwarded_port, guest: 443, host:8443

  config.vm.provision :ansible do |a|
    a.playbook = 'playbook.yml'
    a.host_key_checking = false
    a.extra_vars = {}
    a.verbose = false
  end
end
