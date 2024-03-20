#! /bin/bash
echo "Visit https://localhost:8888 on your browser to start the experience!"
nohup jupyter-lab 2> ./jupyter-lab.out 

#  tail -f /dev/null
# wait