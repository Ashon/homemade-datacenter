#!/bin/bash

docker-compose up -d

ansible-playbook \
  forward_container_netns.yml \
  configure_bgp_network.yml -K
