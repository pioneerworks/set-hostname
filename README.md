## Set Hostname

Sets the hostname on a server in a platform independent way.

### Attributes:

By default attributes are set to `node.name` and `node.ipaddress`

You can override as follows:

```ruby
node.normal['set_hostname']['name'] = 'my-awesome-host'
node.normal['set_hostname']['ip']   =   `ifconfig -a | grep 172.16 | awk '{print $2}' | head -1`
```
