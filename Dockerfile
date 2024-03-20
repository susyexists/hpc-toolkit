FROM ubuntu:22.04
EXPOSE 8888

RUN useradd user 
COPY jupyter_lab_config.py /home/user/.jupyter/
COPY installs.sh /
RUN  sh installs.sh
# RUN mv /startup.sh /home/user/
COPY startup.sh /home/user/
RUN chown -R user /home/user/
RUN chown -R user /home/user/espresso-machine
RUN chmod a+w /home/user/startup.sh
USER user
WORKDIR /home/user/espresso-machine
# CMD ["/bin/bash"]
# CMD ["/bin/bash","-c","/home/user/startup.sh"]
# RUN jupyter-lab &
CMD ["sh","/home/user/startup.sh"]
