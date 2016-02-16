#
# Cookbook Name:: conichi-time
# Recipe:: default
#

bash 'Configure the server timezone as CET' do
  # user 'root'
  code <<-EOC
    sudo timedatectl set-timezone CET
  EOC
end
