#!/bin/bash

docker-compose down -v

for i in $(ip netns); do 
  sudo ip netns del $i
done
