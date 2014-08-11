# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider :digital_ocean do |provider, override|
    
    # set to /etc/digitalocean/id_rsa
    # or...leave as is. place in JENKINS_HOME
    override.ssh.private_key_path = '~/.ssh/vagrant'
    
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"

#   These environment variables will be set by Jenkins @ runtime.
#   Token is replacing Client Id and API Key.

    provider.client_id = 'b7eeed3646fc5c050f2807f8a85233c3'
#   provider.client_id = ENV['DIGITAL_OCEAN_CLIENT_ID']
    provider.api_key = 'e6f31ddd9eaf1db9c8621277bffe8c30'
#   provider.api_key = ENV['DIGITAL_OCEAN_API_KEY']

    # - Switching to CentOS 7 from Ubuntu 14.04-1
    # - API_Key and Client_Id will give way to token. See Below.
#   provider.token = ENV['DIGITAL_OCEAN_TOKEN']
    provider.token = "d763672a5640316e811e1a56392b47aaa0f2788cebfee04d4d93bc42d972ef6c"
    provider.region = 'sfo1'
    provider.size = '512mb'
    provider.image = 'CentOS 7.0 x64'
  end

  config.omnibus.chef_version = :latest

  config.vm.define "loganov-client-workstation" do |node|
    node.vm.hostname = 'client.loganov.com'

    node.vm.provision :chef_client do |chef|
      chef.chef_server_url = 'https://chef.loganov.com:443'
      chef.validation_key_path = 'validation.pem'
      chef.validation_client_name = 'chef-validator'
      chef.delete_node = true
      chef.delete_client = true
      chef.add_recipe('loganov-cron')
    end

  end

end
