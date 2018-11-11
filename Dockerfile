
from centos
#requirements
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && yum -y install sudo nano wget && yum -y update && yum clean all

#from scratch

# add user
RUN useradd -m valheim && usermod -aG wheel valheim
# copy valheim
COPY valheim.tar.gz /home/valheim/valheim.tar.gz
RUN su - valheim -c "tar -xzf valheim.tar.gz"
WORKDIR /home/valheim
USER valheim
CMD ""