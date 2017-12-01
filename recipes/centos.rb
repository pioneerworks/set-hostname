execute 'set hostname to node name' do
  command "hostname #{node['set_hostname']['name']}"
  not_if { node['set_hostname']['name'].nil? }
end

execute 'Setting Hostname' do
  command "sed -i -e 's/HOSTNAME\=localhost.localdomain/HOSTNAME\=#{node['set_hostname']['name']}/g' /etc/sysconfig/network"
end
