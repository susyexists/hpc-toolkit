#Choose initial container
FROM ubuntu:22.04
#Expose port
EXPOSE 8888

COPY ./scripts /
#Copy installation script
# COPY ./scripts/installs.sh /
#Run installments
RUN  sh installs.sh > installs.out
#Copy initialization script
# COPY ./scripts/startup.sh .
#Chose container work directory
WORKDIR /work/
#Run command
CMD ["sh","/startup.sh"]
