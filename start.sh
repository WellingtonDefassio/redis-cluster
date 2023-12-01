#!/bin/bash
redis-server redis-stable/a_master.conf &
redis-server redis-stable/b_master.conf &
redis-server redis-stable/c_master.conf &

# Aguarda 3 segundos
sleep 3

echo "yes" | redis-cli --cluster create localhost:6379 localhost:6380 localhost:6381