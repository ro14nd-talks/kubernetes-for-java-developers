FROM rhuss/docker-reveal:1.4.0

MAINTAINER rhuss@redhat.com
ARG pdf=kubernetes-for-java-developers.pdf

# Add kubectl & openjdk8 & fix interrupt handling
RUN curl https://storage.googleapis.com/kubernetes-release/release/v1.9.6/bin/linux/amd64/kubectl \
    -o /usr/bin/kubectl \
 && chmod 755 /usr/bin/kubectl

# Install OpenJDK8
RUN apk update \
 && apk add openjdk8

# Workaround for making CTRL-C working again
ADD docker/reset_signals.c /tmp
ADD docker/ash_wrapper.sh /bin/ash_wrapper.sh
ADD docker/bash_wrapper.sh /bin/bash_wrapper.sh
RUN gcc /tmp/reset_signals.c -o /bin/reset_signals \
 && rm /bin/ash \
 && mv /bin/ash_wrapper.sh /bin/ash \
 && chmod 755 /bin/ash \
 && mv /bin/bash /bin/bash.orig \
 && mv /bin/bash_wrapper.sh /bin/bash \
 && chmod 755 /bin/bash

# kubeproxy for visualizer
ADD docker/start_extra.sh /start_extra.sh
EXPOSE 8001

# Profile
ADD docker/kubernetes_profile.sh /etc/profile.d/kubernetes.sh
ADD docker/wrap_aliases.sh /etc/profile.d/zz_wrap_aliases.sh
# Enable this for creating the distribution
# ADD m2.tar.bz2 /root/.m2/
ADD slides /slides/
ADD ${pdf} /slides/kubernetes-for-java-developers.pdf
ADD demos/ping /demo/
ADD visualizer /visualizer/
ADD kubeconfig /root/.kube/config
