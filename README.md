# Homemade datacenter network

simulate datacenter network in laptop

## Requirements

- Linux (not working in mac)
- Docker
- Ansible (for network provisioning)

## Usage

``` sh
# up containers
$ ./up.sh

# down
$ ./down.sh
```

## Ansible playbooks

- `forward_container_netns.yml`: forwarding container netns to host netns
- `configure_bgp_network.yml`: configure veth interfaces in each network nodes.

## [WIP] Acomplishing BGP

Use `BIRD2` router.

# Licence

MIT
