FROM ubuntu:22.04
EXPOSE 8888

RUN useradd user 
COPY jupyter_lab_config.py /home/user/.jupyter/
COPY installs.sh /
RUN  sh installs.sh
# RUN mv /espresso-machine/ /home/user/
RUN chown -R user /home/user/
RUN chown -R user /home/user/espresso-machine
USER user
WORKDIR /home/user/espresso-machine
CMD ["jupyter-lab"]
# CMD ["bin/bash"]