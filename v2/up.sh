#!/bin/bash
ansible-playbook \
  forward_container_netns.yml \
  configure_bgp_network.yml -K
