FROM centos:7.5.1804
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.11.3
