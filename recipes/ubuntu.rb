execute 'set hostname to node name' do
  command "hostname #{node['set_hostname']['name']}"
  not_if { node['set_hostname']['name'].nil? }
end

template '/etc/hosts' do
  source 'hosts.erb'
  mode 0644
end

template '/etc/hostname' do
  source 'nodename.erb'
  mode 0644
end
