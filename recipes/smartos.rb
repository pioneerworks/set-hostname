execute 'set hostname to node name' do
  command "hostname #{node['set_hostname']['name']}"
  only_if node['set_hostname']['name']
end

template '/etc/inet/hosts' do
  source 'hosts.erb'
  mode 0644
end

template '/etc/nodename' do
  source 'nodename.erb'
  mode 0644
end
