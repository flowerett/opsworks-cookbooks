#
# Cookbook Name:: conichi-time
# Recipe:: default
#

bash 'Add the Fusion Passenger apt repository' do
  # user 'root'
  code <<-EOC
    sudo timedatectl set-timezone CET
  EOC
end
