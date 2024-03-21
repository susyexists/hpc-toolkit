#Choose initial container
FROM ubuntu:22.04
#Expose port
EXPOSE 8888

#Copy jupyter lab configurations 
COPY jupyter_lab_config.py /root/.jupyter/
#Copy installation script
COPY installs.sh /
#Run installments
RUN  sh installs.sh
#Copy initialization script
COPY startup.sh .
#Chose container work directory
WORKDIR /espresso-machine/
#Run command
CMD ["sh","/startup.sh"]
