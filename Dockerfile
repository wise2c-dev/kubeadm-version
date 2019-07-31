FROM centos:7.5.1804
ARG  KUBERNETES_VERSION
ENV  KUBERNETES_VERSION=${KUBERNETES_VERSION}
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-${KUBERNETES_VERSION}
