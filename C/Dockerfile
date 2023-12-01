#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "apply-templates.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM  ubuntu:18.04
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y wget && apt-get install redis-server -y
RUN apt install make gcc libc6-dev tcl -y
RUN wget http://download.redis.io/redis-stable.tar.gz && tar xvzf redis-stable.tar.gz && cd redis-stable && make install
COPY c_master.conf /redis-stable

EXPOSE 6381
CMD [ "redis-server", "redis-stable/c_master.conf"]