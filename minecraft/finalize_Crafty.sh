#! /bin/bash

# Run Crafty first time
cd /var/opt/minecraft/crafty
echo "exit" | ./run_crafty.sh > initial_run.out
cat initial_run.out
