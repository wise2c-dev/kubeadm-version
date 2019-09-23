FROM centos:7.5.1804
ARG  KUBERNETES_VERSION
WORKDIR /kubeconfig

ENV  KUBERNETES_VERSION=${KUBERNETES_VERSION}
COPY kubernetes.repo /etc/yum.repos.d
COPY kube-dns.yaml kube-dns.yaml
RUN yum -y install kubeadm-${KUBERNETES_VERSION}
