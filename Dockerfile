FROM rsolano/debian-vnc-cforpy

# install required packages
RUN apt-get update -y \
	&& apt-get install python-sympy \
	&&  apt-get clean

# ports (SSH, VNC, Jupyter)
EXPOSE 22 5900 8888

# default command
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]