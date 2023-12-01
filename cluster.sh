#!/bin/bash
# Aguarda 3 segundos
sleep 3

echo "yes" | redis-cli --cluster create localhost:6379 localhost:6380 localhost:6381