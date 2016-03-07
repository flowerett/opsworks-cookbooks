#
# Cookbook Name:: conichi-nodejs
# Recipe:: default
#

bash 'Installs latest nodejs from packages' do
  # user 'root'
  code <<-EOC
    curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
    sudo apt-get install -y nodejs
  EOC
end
