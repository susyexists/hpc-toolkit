Docker container for ready use HPC software
 Docker Hub
    docker pull susyexists/hpc-toolkit
 To build 
    docker build -t hpc-toolkit ./ --no-cache      
 To run
    docker run -it --rm -p 8888:8888 hpc-toolkit bash
 
