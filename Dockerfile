FROM rhuss/docker-reveal:1.1.1

MAINTAINER rhuss@redhat.com
ARG pdf=kubernetes-for-java-developers.pdf

# Where to find kubernetes
ARG KUBERNETES_MASTER=http://192.168.23.200:8080

# Add kubectl & openjdk8 & fix interrupt handling
RUN curl https://storage.googleapis.com/kubernetes-release/release/v1.3.2/bin/linux/amd64/kubectl \
    -o /usr/bin/kubectl \
 && curl https://storage.googleapis.com/kubernetes-release/release/v1.2.2/bin/linux/amd64/kubectl \
    -o /usr/bin/kubectl12 \
 && chmod 755 /usr/bin/kubectl /usr/bin/kubectl12 \
 && kubectl config set-cluster cluster-pi --insecure-skip-tls-verify=true --server=${KUBERNETES_MASTER} \
 && kubectl config set-context default/cluster-pi --namespace=default --cluster=cluster-pi \
 && kubectl config use-context default/cluster-pi

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
