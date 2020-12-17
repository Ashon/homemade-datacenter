#!/bin/bash

docker-compose down -v

for i in $(ip netns); do 
  ip netns del $i
done
